import os

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

def search_files():
    gloss_terms = glossario_terms()
    skip_dirs = {"diari-di-bordo", "glossario", "1 - candidatura", "template"}
    for root, dirs, files in os.walk("./../../"):
        dirs[:] = [d for d in dirs if d not in skip_dirs]
        for file in files:
            if file.endswith(".typ"):
                print(f"Searching in {root, file}")

                file_path = os.path.join(root, file)
                with open(file_path, "a") as f:
                    file_content = f.read()
                    for term in gloss_terms:
                        if term in file_content and f"#gloss[ {term} ]" not in file_content:
                            print(f"Found '{term}' in {file}")
                            file_content = file_content.replace(term, f"#gloss[ {term} ]")
                    f.write(file_content)

search_files()