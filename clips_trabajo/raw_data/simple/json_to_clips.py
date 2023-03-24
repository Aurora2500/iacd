import json

with open('recipes.json') as f:
    data = json.load(f)

print("(deffacts recipes")

for recipe in data:
    if recipe['recipe']['yield'] is None:
      continue
    ingredient_str = " ".join([f"\"{i['id']}\" {i['amount']}" for i in recipe['recipe']['ingredients']])
    recipe_str  = "\t(recipe\n" \
    f"\t\t(product \"{recipe['id']}\")\n" \
    f"\t\t(yield {recipe['recipe']['yield']})\n" \
    f"\t\t(ingredients {ingredient_str})\n" \
    f"\t\t(time {recipe['recipe']['time']}))\n"

    print(recipe_str)

print(")")