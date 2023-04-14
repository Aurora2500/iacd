import json

with open("data.json") as f:
    data = json.load(f)

def interpret_ingredient(ing):
    if isinstance(ing, list):
        return {
            "name": ing[0],
            "ammount": ing[1]
        }
    else:
        return ing


print("(deffacts recipes")

for id, recipe in data["recipe"].items():
    category = recipe.get("category", "crafting")
    if "normal" in recipe:
        recipe = recipe["normal"]
    time = recipe.get("energy_required", 0.5)
    result_yield = recipe.get("result_count", 1)

    ingredients = [interpret_ingredient(i) for i in recipe["ingredients"]]

    recipe_str = "\t(recipe\n" \
    f"\t\t(product \"{id}\")\n" \
    