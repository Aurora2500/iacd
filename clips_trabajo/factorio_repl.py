from factorio import FactorioCalc

calc = FactorioCalc()

while True:
    request = input('¿Qué quieres hacer? ')
    if request == "exit":
        break
    parts = request.split()
    if parts[0] == 'tree':
        tree = calc.production_tree(parts[1], int(parts[2]))
        tree.print_tree()
        continue
    if parts[0] == 'set':
        calc.set_factory(parts[1], parts[2])
        continue