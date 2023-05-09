from collections import defaultdict
import clips

class ProductionTree:
    def __init__(self, item, ammount):
        self.item = item
        self.ammount = ammount
        self.children = []
    
    def add_child(self, child):
        self.children.append(child)
    
    def print_tree(self):
        stack = [(self, 0)]
        while stack:
            node, level = stack.pop()
            print('| ' * level + node.item + ' ' + str(node.ammount))
            for child in node.children:
                stack.append((child, level + 1))
    
    def __repr__(self):
        return f'ProductionTree({self.item}, {self.ammount})'

def create_tree(tree_facts):
    fact_map = {f[2]: ProductionTree(f[0], f[1]) for f in tree_facts}
    for f in tree_facts:
        if f[3] != 'nil':
            fact_map[f[3]].add_child(fact_map[f[2]])
    root_node = next(fact_map[f[2]] for f in tree_facts if f[3] == 'nil')
    return root_node
    

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
        prod_tree_facts = [f for f in self.env.facts() if f.template.name == 'request_tree']
        return prod_tree_facts
        return create_tree(prod_tree_facts)
