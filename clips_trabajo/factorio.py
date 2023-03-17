import clips

env = clips.Environment()

env.load('factorio.clp')

def process_request(request):
    if request == "exit":
        return None
    ...

while True:
    peticion = input('¿Qué quieres hacer? ')
    peticion_procesada = process_request(peticion)
    if peticion_procesada is None:
        break


    # metemos hechos en el motor de inferencia
    ...
    
    env.run()

    # sacamos hechos del motor de inferencia
