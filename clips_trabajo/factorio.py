from collections import defaultdict
from math import ceil
import clips


class ProductionTree:
    def __init__(self, item, ammount, factory, power):
        self.item = item
        self.ammount = ammount
        self.factory = factory
        self.power = power
        self.children = []

    def add_child(self, child):
        self.children.append(child)

    def print_tree(self):
        stack = [(self, 0)]
        while stack:
            node, level = stack.pop()
            b_str = f"{'| ' * level }{node.item} {ceil(node.ammount)}"
            if (node.factory and node.power):
                b_str += f" (need {node.power[1]} {node.power[0]} for {node.factory[1]} {node.factory[0]})"
            print(b_str)
            for child in node.children:
                stack.append((child, level + 1))

    def __repr__(self):
        return f'ProductionTree({self.item}, {self.ammount})'


def create_tree(tree_facts, factory_facts, power_facts):
    fact_map = {
        f[2]: ProductionTree(
            f[0], f[1], factory_facts.get(f[2], None), power_facts.get(f[2], None))
        for f in tree_facts
    }
    for f in tree_facts:
        if f[3] != 'nil':
            fact_map[f[3]].add_child(fact_map[f[2]])
    root_node = next(fact_map[f[2]] for f in tree_facts if f[3] == 'nil')
    return root_node

always_present_factories = [
    'chemical-plant',
    'oil-refinery',
]

valid_factories = {
    'assembler': {
        'assembling-machine-1',
        'assembling-machine-2',
        'assembling-machine-3',
    },
    'furnace': {
        'stone-furnace',
        'steel-furnace',
        'electric-furnace',
    },
}

default_factories = {
    'assembler': 'assembling-machine-1',
    'furnace': 'stone-furnace',
}

class FactorioCalc:

    def __init__(self, env=None):
        if env is None:
            self.env = clips.Environment()
        else:
            self.env = env
        self.env.load('factorio.clp')
        self.env.load('gen.clp')
        self.env.reset()
        self.factories = default_factories.copy()

    def set_factory(self, factory_type, factory):
        if factory in valid_factories[factory_type]:
            self.factories[factory_type] = factory

    def production_tree(self, item, amount):
        self.env.reset()
        for fac in always_present_factories:
            self.env.assert_string(f'(available_factory "{fac}")')
        for fac in self.factories.values():
            self.env.assert_string(f'(available_factory "{fac}")')
        self.env.assert_string(f'(request "{item}" {amount})')
        self.env.run()
        facts = list(self.env.facts())
        prod_tree_facts = [
            f
            for f in self.env.facts()
            if f.template.name == 'request_tree'
        ]
        factory_count_facts = {
            f[2]: (f[0], f[1])
            for f in facts
            if f.template.name == 'factories_needed'
        }
        power_source_facts = {
            f[2]: (f[0], f[1])
            for f in facts
            if f.template.name == 'power_source'
        }
        return create_tree(prod_tree_facts, factory_count_facts, power_source_facts)
