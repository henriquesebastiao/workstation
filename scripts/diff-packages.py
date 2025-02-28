yay_qet, yay_qet_old = [], []

with open('yay-qet.txt', encoding='utf8') as file:
    lines = file.readlines()
    for item in lines:
        pkg_name, _ = item.split()
        yay_qet.append(pkg_name)

with open('yay-qet-old.txt', encoding='utf8') as file:
    lines = file.readlines()
    for item in lines:
        pkg_name, _ = item.split()
        yay_qet_old.append(pkg_name)

removed, added = [], []

for pkg in yay_qet_old:
    if pkg not in yay_qet:
        removed.append(pkg)

for pkg in yay_qet:
    if pkg not in yay_qet_old:
        added.append(pkg)

print('Pacotes removidos:')
[print(item) for item in removed]
print()

print('Pacotes adicionados:')
[print(item) for item in added]
