import json

with open("data.json") as f:
    data = json.load(f)


def interpret_ingredient(ing):
    if isinstance(ing, list):
        return {
            "name": ing[0],
            "amount": ing[1]
        }
    else:
        return ing


print("(deffacts recipes")

for id, recipe in data["recipe"].items():
    if id in ['advanced-oil-processing', 'light-oil-cracking', 'coal-liquefaction']:
        continue
    category = recipe.get("category", "crafting")
    if "normal" in recipe:
        recipe = recipe["normal"]
    time = recipe.get("energy_required", 0.5)
    result_yield = recipe.get("result_count", 1)

    if "results" in recipe:
        results = [
            (x["name"], x["amount"]) if type(x) != list else x
            for x in recipe["results"]
        ]
    else:
        results = [(recipe["result"], recipe.get("result_count", 1))]
    ingredients = [interpret_ingredient(i) for i in recipe["ingredients"]]
    ingredients_str = " ".join(
        (repr(r["name"]).replace("'", '"') + " " + str(r["amount"])) for r in ingredients)
    if "barrel" in ingredients_str:
        continue
    time = float(recipe.get("energy_required", 0.5))
    r_type = recipe.get("category", "crafting")

    for res, res_yield in results:
        recipe_str = "\t(recipe\n" \
            f"\t\t(product \"{res}\")\n" \
            f"\t\t(yield {res_yield})\n" \
            f"\t\t(ingredients {ingredients_str})\n" \
            f"\t\t(time {time})\n" \
            f"\t\t(type \"{r_type}\"))\n"

        print(recipe_str)


print(")\n")

print("(deffacts production")


def parse_power(power_str):
    num_str = power_str[:-2]
    exponent_prefix = power_str[-2].lower()

    exponent_map = {
        'k': 1e3,
        'm': 1e6,
        'g': 1e9,
        't': 1e12,
    }

    return int(int(num_str) * exponent_map[exponent_prefix])


for id, machine in (data["assembling-machine"] | data["furnace"]).items():
    print(
        f"\t(factory (name \"{id}\") (speed {float(machine['crafting_speed'])}) (power {parse_power(machine['energy_usage'])}) (power_type \"{machine['energy_source']['type']}\"))")
    for cat in machine["crafting_categories"]:
        print(f"\t(factory_capability \"{id}\" \"{cat}\")")

print(")")
