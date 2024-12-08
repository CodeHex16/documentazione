import os
import re

def glossario_terms():
    gloss_terms = []
    with open("./glossario.typ", "r") as glossarioFile:
        glossario = glossarioFile.read().split("//GLOSSARIO")[1]
        for term in glossario.split("\n"):
            if term.startswith("== "):
                term = term.removeprefix("== ").lower()
                term = term.split("(")[0].strip()
                gloss_terms.append(term)
    gloss_terms.sort(key=len, reverse=True)
    return gloss_terms

def replace_terms_in_file(file_path, terms):
    with open(file_path, "r") as f:
        file_content = f.read()

    body_start = file_content.find('\n=')
    if body_start == -1:
        return

    header = file_content[:body_start]
    body = file_content[body_start:]

    for term in terms:
        # Cerca parole intere, case-insensitive
        pattern = re.compile(r'(?<!#gloss\[)\b(' + re.escape(term) + r')\b(?!\])', re.IGNORECASE)
        
        # Funzione di sostituzione
        def replacer(match):
            start = match.start()
            line_start = body.rfind('\n', 0, start) + 1
            line_end = body.find('\n', start)
            if line_end == -1:
                line_end = len(body)
            line = body[line_start:line_end]
            
            if (line.strip().startswith('=') or 
                'link' in line or 
                'https' in line):
                return match.group(0)
            
            return f"#gloss[{match.group(1)}]"

        body, count = re.subn(pattern, replacer, body, count=1)
        if count > 0:
            print(f"\t+ Found '{term}' in {file_path}")

    new_content = header + body
    with open(file_path, "w") as f:
        f.write(new_content)

def search_files():
    gloss_terms = glossario_terms()
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