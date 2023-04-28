from factorio import FactorioCalc

calc = FactorioCalc()

def process_request(request):
    parts = request.split()
    if request == "exit":
        return None
    if parts[0] == 'tree':
        item = parts[1]
        amount = parts[2]
        facts = calc.production_tree(item, amount)
        for fact in facts:
            print(fact)

while True:
    peticion = input('¿Qué quieres hacer? ')
    peticion_procesada = process_request(peticion)
    if peticion_procesada is None:
        break
    

    # sacamos hechos del motor de inferencia