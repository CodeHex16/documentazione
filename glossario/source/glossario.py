import os
import re

def get_glossario_terms():
    gloss_terms = []
    with open("./glossario.typ", "r") as glossarioFile:
        glossario = glossarioFile.read().split("//GLOSSARIO")[1]
        for term in glossario.split("\n"):
            if term.startswith("== "):
                # Pulizia e formattazione del termine
                term = (term.removeprefix("== ")
                       .lower()
                       .split("(")[0]
                       .strip())
                gloss_terms.append(term)
    return sorted(gloss_terms, key=len, reverse=True)

def replace_terms_in_file(file_path, terms):
    with open(file_path, "r") as f:
        file_content = f.read()

    body_start = file_content.find('\n=')
    if body_start == -1:
        return

    header = file_content[:body_start]
    body = file_content[body_start:]

    # trova tutti i termini già segnati come #gloss[...]
    already_glossed = set()
    gloss_pattern = re.compile(r'#gloss\[(.*?)\]', re.IGNORECASE)
    for match in gloss_pattern.finditer(body):
        glossed_term = match.group(1).lower()
        already_glossed.add(glossed_term)

    # rimuove quelli già segnati
    terms_to_search = [term for term in terms if term.lower() not in already_glossed]

    for term in terms_to_search:
        pattern = re.compile(r'(?<!#gloss\[)\b(' + re.escape(term) + r')\b(?!\])', re.IGNORECASE)
        
        def replacer(match):
            start = match.start()
            line_start = body.rfind('\n', 0, start) + 1
            line_end = body.find('\n', start)
            if line_end == -1:
                line_end = len(body)
            line = body[line_start:line_end]
            
            if (line.strip().startswith('=') or 
                'link' in line or 
                'https' in line or 
                'issue' in line):
                return match.group(0)
            
            return f"#gloss[{match.group(1)}]"

        body, count = re.subn(pattern, replacer, body, count=1)
        if count > 0:
            print(f"\t+ Found '{term}' in {file_path}")

    new_content = header + body
    with open(file_path, "w") as f:
        f.write(new_content)

def search_files():
    gloss_terms = get_glossario_terms()
    print(gloss_terms)
    
    skip_dirs = {".git", ".github", "diari-di-bordo", "glossario", "1 - candidatura", "template"}
    for root, dirs, files in os.walk("./../../"):
        print(f"Searching in {root}")
        dirs[:] = [d for d in dirs if d not in skip_dirs]
        for file in files:
            if file.endswith(".typ"):
                file_path = os.path.join(root, file)
                replace_terms_in_file(file_path, gloss_terms)

if __name__ == "__main__":
    search_files()