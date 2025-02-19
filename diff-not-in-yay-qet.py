used_pkgs = []
pkgs = set()

with open('packages.txt', encoding='utf8') as file:
    lines = file.readlines()
    for package_name in lines:
        used_pkgs.append(package_name.strip('\n'))
    
with open('yay-qet.txt', encoding='utf8') as pkgs_file:
    lines = pkgs_file.readlines()
    for item in lines:
        package_name, _ = item.split()
        pkgs.add(package_name)
        
for pkg in used_pkgs:
    if pkg not in pkgs:
        print(pkg)
