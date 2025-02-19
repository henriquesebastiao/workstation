pkgs = []
used_pkgs = set()

with open('yay-qet.txt', encoding='utf8') as file:
    lines = file.readlines()
    for item in lines:
        package_name, _ = item.split()
        pkgs.append(package_name)
    
with open('packages.txt', encoding='utf8') as pkgs_file:
    lines = pkgs_file.readlines()
    for line in lines:
        used_pkgs.add(line.strip('\n'))
        
for pkg in pkgs:
    if pkg not in used_pkgs:
        print(pkg)
