import os
import re

def glossario_terms():
    gloss_terms = []
    with open("./glossario.typ", "r") as glossarioFile:
        glossario = glossarioFile.read().split("//GLOSSARIO")[1]
        for term in glossario.split("\n"):
            if term.startswith("== "):
                term = term.removeprefix("== ").lower()
                # remove (...) content
                term = term.split("(")[0]
                gloss_terms.append(term)
    return gloss_terms

def replace_terms_in_file(file_path, terms):
    file_content = ""
    with open(file_path, "r") as f:
        file_content = f.read()
        for term in terms:
            pattern = re.compile(r'\b' + re.escape(term) + r'\b', re.IGNORECASE)
            if re.search(pattern, file_content) and f"#gloss[ {term} ]" not in file_content:
                print(f"\t+ Found '{term}' in {file_path}")
                file_content = re.sub(pattern, f"#gloss[{term}]", file_content)
    with open(file_path, "w") as f:
        f.write(file_content)

def search_files():
    gloss_terms = glossario_terms()
    skip_dirs = {".git",".github","diari-di-bordo", "glossario", "1 - candidatura", "template"}
    for root, dirs, files in os.walk("./../../"):
        print(f"Searching in {root}")
        dirs[:] = [d for d in dirs if d not in skip_dirs]
        for file in files:
            if file.endswith(".typ"):
                file_path = os.path.join(root, file)
                replace_terms_in_file(file_path, gloss_terms)

search_files()