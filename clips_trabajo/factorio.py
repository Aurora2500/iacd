import clips

class FactorioCalc:

    def __init__(self):
        self.env = clips.Environment()
        self.env.load('factorio.clp')
        self.env.load('recipes.clp')
        self.env.reset()

    def production_tree(self, item, amount):
        self.env.reset()
        self.env.assert_string(f'(request "{item}" {amount})')
        self.env.run()
        return self.env.facts()
    
