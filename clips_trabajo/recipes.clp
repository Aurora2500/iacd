(deffacts recipes
	(recipe
		(product "accumulator")
		(yield 1)
		(ingredients "battery" 5 "iron-plate" 2)
		(time 10))

	(recipe
		(product "logistic-chest-active-provider")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electronic-circuit" 3 "steel-chest" 1)
		(time 0.5))

	(recipe
		(product "advanced-circuit")
		(yield 1)
		(ingredients "copper-cable" 4 "electronic-circuit" 2 "plastic-bar" 2)
		(time 6))

	(recipe
		(product "arithmetic-combinator")
		(yield 1)
		(ingredients "copper-cable" 5 "electronic-circuit" 5)
		(time 0.5))

	(recipe
		(product "artillery-shell")
		(yield 1)
		(ingredients "explosive-cannon-shell" 4 "explosives" 8 "radar" 1)
		(time 15))

	(recipe
		(product "artillery-targeting-remote")
		(yield 1)
		(ingredients "processing-unit" 1 "radar" 1)
		(time 0.5))

	(recipe
		(product "artillery-turret")
		(yield 1)
		(ingredients "advanced-circuit" 20 "concrete" 60 "iron-gear-wheel" 40 "steel-plate" 60)
		(time 40))

	(recipe
		(product "artillery-wagon")
		(yield 1)
		(ingredients "advanced-circuit" 20 "engine-unit" 64 "iron-gear-wheel" 10 "pipe" 16 "steel-plate" 40)
		(time 4))

	(recipe
		(product "assembling-machine-1")
		(yield 1)
		(ingredients "electronic-circuit" 3 "iron-gear-wheel" 5 "iron-plate" 9)
		(time 0.5))

	(recipe
		(product "assembling-machine-2")
		(yield 1)
		(ingredients "assembling-machine-1" 1 "electronic-circuit" 3 "iron-gear-wheel" 5 "iron-plate" 9)
		(time 0.5))

	(recipe
		(product "assembling-machine-3")
		(yield 1)
		(ingredients "assembling-machine-2" 2 "speed-module" 4)
		(time 0.5))

	(recipe
		(product "atomic-bomb")
		(yield 1)
		(ingredients "explosives" 10 "processing-unit" 20 "uranium-235" 30)
		(time 50))

	(recipe
		(product "battery")
		(yield 1)
		(ingredients "copper-plate" 1 "iron-plate" 1 "sulfuric-acid" 20)
		(time 5))

	(recipe
		(product "battery-mk1")
		(yield 1)
		(ingredients "battery" 5 "steel-plate" 10)
		(time 10))

	(recipe
		(product "battery-mk2")
		(yield 1)
		(ingredients "battery-mk1" 10 "processing-unit" 20)
		(time 10))

	(recipe
		(product "beacon")
		(yield 1)
		(ingredients "advanced-circuit" 20 "copper-cable" 10 "electronic-circuit" 20 "steel-plate" 10)
		(time 15))

	(recipe
		(product "big-electric-pole")
		(yield 1)
		(ingredients "copper-plate" 5 "steel-plate" 5)
		(time 0.5))

	(recipe
		(product "boiler")
		(yield 1)
		(ingredients "pipe" 4 "stone-furnace" 1)
		(time 0.5))

	(recipe
		(product "logistic-chest-buffer")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electronic-circuit" 3 "steel-chest" 1)
		(time 0.5))

	(recipe
		(product "burner-inserter")
		(yield 1)
		(ingredients "iron-gear-wheel" 1 "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "burner-mining-drill")
		(yield 1)
		(ingredients "iron-gear-wheel" 3 "iron-plate" 3 "stone-furnace" 1)
		(time 4))

	(recipe
		(product "cannon-shell")
		(yield 1)
		(ingredients "explosives" 1 "plastic-bar" 2 "steel-plate" 2)
		(time 8))

	(recipe
		(product "car")
		(yield 1)
		(ingredients "engine-unit" 8 "iron-plate" 20 "steel-plate" 5)
		(time 2))

	(recipe
		(product "cargo-wagon")
		(yield 1)
		(ingredients "iron-gear-wheel" 10 "iron-plate" 20 "steel-plate" 20)
		(time 1))

	(recipe
		(product "centrifuge")
		(yield 1)
		(ingredients "advanced-circuit" 100 "concrete" 100 "iron-gear-wheel" 100 "steel-plate" 50)
		(time 4))

	(recipe
		(product "chemical-plant")
		(yield 1)
		(ingredients "electronic-circuit" 5 "iron-gear-wheel" 5 "pipe" 5 "steel-plate" 5)
		(time 5))

	(recipe
		(product "cliff-explosives")
		(yield 1)
		(ingredients "empty-barrel" 1 "explosives" 10 "grenade" 1)
		(time 8))

	(recipe
		(product "cluster-grenade")
		(yield 1)
		(ingredients "explosives" 5 "grenade" 7 "steel-plate" 5)
		(time 8))

	(recipe
		(product "combat-shotgun")
		(yield 1)
		(ingredients "copper-plate" 10 "iron-gear-wheel" 5 "steel-plate" 15 "wood" 10)
		(time 10))

	(recipe
		(product "concrete")
		(yield 10)
		(ingredients "iron-ore" 1 "stone-brick" 5 "water" 100)
		(time 10))

	(recipe
		(product "constant-combinator")
		(yield 1)
		(ingredients "copper-cable" 5 "electronic-circuit" 2)
		(time 0.5))

	(recipe
		(product "construction-robot")
		(yield 1)
		(ingredients "electronic-circuit" 2 "flying-robot-frame" 1)
		(time 0.5))

	(recipe
		(product "copper-cable")
		(yield 2)
		(ingredients "copper-plate" 1)
		(time 0.5))

	(recipe
		(product "copper-plate")
		(yield 1)
		(ingredients "copper-ore" 1)
		(time 3.5))

	(recipe
		(product "decider-combinator")
		(yield 1)
		(ingredients "copper-cable" 5 "electronic-circuit" 5)
		(time 0.5))

	(recipe
		(product "defender-capsule")
		(yield 1)
		(ingredients "electronic-circuit" 2 "iron-gear-wheel" 3 "piercing-rounds-magazine" 1)
		(time 8))

	(recipe
		(product "destroyer-capsule")
		(yield 1)
		(ingredients "distractor-capsule" 4 "speed-module" 1)
		(time 15))

	(recipe
		(product "discharge-defense")
		(yield 1)
		(ingredients "laser-turret" 10 "processing-unit" 5 "steel-plate" 20)
		(time 10))

	(recipe
		(product "discharge-defense-remote")
		(yield 1)
		(ingredients "electronic-circuit" 1)
		(time 0.5))

	(recipe
		(product "distractor-capsule")
		(yield 1)
		(ingredients "advanced-circuit" 3 "defender-capsule" 4)
		(time 15))

	(recipe
		(product "effectivity-module")
		(yield 1)
		(ingredients "advanced-circuit" 5 "electronic-circuit" 5)
		(time 15))

	(recipe
		(product "effectivity-module-2")
		(yield 1)
		(ingredients "advanced-circuit" 5 "effectivity-module" 4 "processing-unit" 5)
		(time 30))

	(recipe
		(product "effectivity-module-3")
		(yield 1)
		(ingredients "advanced-circuit" 5 "effectivity-module-2" 5 "processing-unit" 5)
		(time 60))

	(recipe
		(product "electric-engine-unit")
		(yield 1)
		(ingredients "electronic-circuit" 2 "engine-unit" 1 "lubricant" 15)
		(time 10))

	(recipe
		(product "electric-furnace")
		(yield 1)
		(ingredients "advanced-circuit" 5 "steel-plate" 10 "stone-brick" 10)
		(time 5))

	(recipe
		(product "electric-mining-drill")
		(yield 1)
		(ingredients "electronic-circuit" 3 "iron-gear-wheel" 5 "iron-plate" 10)
		(time 2))

	(recipe
		(product "electronic-circuit")
		(yield 1)
		(ingredients "copper-cable" 3 "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "empty-barrel")
		(yield 1)
		(ingredients "steel-plate" 1)
		(time 1))

	(recipe
		(product "energy-shield")
		(yield 1)
		(ingredients "advanced-circuit" 5 "steel-plate" 10)
		(time 10))

	(recipe
		(product "energy-shield-mk2")
		(yield 1)
		(ingredients "energy-shield" 10 "processing-unit" 10)
		(time 10))

	(recipe
		(product "engine-unit")
		(yield 1)
		(ingredients "iron-gear-wheel" 1 "pipe" 2 "steel-plate" 1)
		(time 10))

	(recipe
		(product "exoskeleton")
		(yield 1)
		(ingredients "electric-engine-unit" 30 "processing-unit" 10 "steel-plate" 20)
		(time 10))

	(recipe
		(product "explosive-cannon-shell")
		(yield 1)
		(ingredients "explosives" 2 "plastic-bar" 2 "steel-plate" 2)
		(time 8))

	(recipe
		(product "explosive-rocket")
		(yield 1)
		(ingredients "explosives" 2 "rocket" 1)
		(time 8))

	(recipe
		(product "explosive-uranium-cannon-shell")
		(yield 1)
		(ingredients "explosive-cannon-shell" 1 "uranium-238" 1)
		(time 12))

	(recipe
		(product "explosives")
		(yield 2)
		(ingredients "coal" 1 "sulfur" 1 "water" 10)
		(time 5))

	(recipe
		(product "express-splitter")
		(yield 1)
		(ingredients "advanced-circuit" 10 "fast-splitter" 1 "iron-gear-wheel" 10 "lubricant" 80)
		(time 2))

	(recipe
		(product "express-transport-belt")
		(yield 1)
		(ingredients "fast-transport-belt" 1 "iron-gear-wheel" 10 "lubricant" 20)
		(time 0.5))

	(recipe
		(product "express-underground-belt")
		(yield 2)
		(ingredients "fast-underground-belt" 2 "iron-gear-wheel" 80 "lubricant" 40)
		(time 2))

	(recipe
		(product "fast-inserter")
		(yield 1)
		(ingredients "electronic-circuit" 2 "inserter" 1 "iron-plate" 2)
		(time 0.5))

	(recipe
		(product "fast-splitter")
		(yield 1)
		(ingredients "electronic-circuit" 10 "iron-gear-wheel" 10 "splitter" 1)
		(time 2))

	(recipe
		(product "fast-transport-belt")
		(yield 1)
		(ingredients "iron-gear-wheel" 5 "transport-belt" 1)
		(time 0.5))

	(recipe
		(product "fast-underground-belt")
		(yield 2)
		(ingredients "iron-gear-wheel" 40 "underground-belt" 2)
		(time 2))

	(recipe
		(product "filter-inserter")
		(yield 1)
		(ingredients "electronic-circuit" 4 "fast-inserter" 1)
		(time 0.5))

	(recipe
		(product "firearm-magazine")
		(yield 1)
		(ingredients "iron-plate" 4)
		(time 1))

	(recipe
		(product "flamethrower")
		(yield 1)
		(ingredients "iron-gear-wheel" 10 "steel-plate" 5)
		(time 10))

	(recipe
		(product "flamethrower-ammo")
		(yield 1)
		(ingredients "heavy-oil" 50 "light-oil" 50 "steel-plate" 5)
		(time 6))

	(recipe
		(product "flamethrower-turret")
		(yield 1)
		(ingredients "engine-unit" 5 "iron-gear-wheel" 15 "pipe" 10 "steel-plate" 30)
		(time 20))

	(recipe
		(product "fluid-wagon")
		(yield 1)
		(ingredients "iron-gear-wheel" 10 "pipe" 8 "steel-plate" 16 "storage-tank" 1)
		(time 1.5))

	(recipe
		(product "flying-robot-frame")
		(yield 1)
		(ingredients "battery" 2 "electric-engine-unit" 1 "electronic-circuit" 3 "steel-plate" 1)
		(time 20))

	(recipe
		(product "gate")
		(yield 1)
		(ingredients "electronic-circuit" 2 "steel-plate" 2 "stone-wall" 1)
		(time 0.5))

	(recipe
		(product "green-wire")
		(yield 1)
		(ingredients "copper-cable" 1 "electronic-circuit" 1)
		(time 0.5))

	(recipe
		(product "grenade")
		(yield 1)
		(ingredients "coal" 10 "iron-plate" 5)
		(time 8))

	(recipe
		(product "gun-turret")
		(yield 1)
		(ingredients "copper-plate" 10 "iron-gear-wheel" 10 "iron-plate" 20)
		(time 8))

	(recipe
		(product "hazard-concrete")
		(yield 10)
		(ingredients "concrete" 10)
		(time 0.25))

	(recipe
		(product "heat-exchanger")
		(yield 1)
		(ingredients "copper-plate" 100 "pipe" 10 "steel-plate" 10)
		(time 3))

	(recipe
		(product "heat-pipe")
		(yield 1)
		(ingredients "copper-plate" 20 "steel-plate" 10)
		(time 1))

	(recipe
		(product "heavy-armor")
		(yield 1)
		(ingredients "copper-plate" 100 "steel-plate" 50)
		(time 8))

	(recipe
		(product "high-tech-science-pack")
		(yield 2)
		(ingredients "battery" 1 "copper-cable" 30 "processing-unit" 3 "speed-module" 1)
		(time 14))

	(recipe
		(product "inserter")
		(yield 1)
		(ingredients "electronic-circuit" 1 "iron-gear-wheel" 1 "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "iron-axe")
		(yield 1)
		(ingredients "iron-plate" 3 "iron-stick" 2)
		(time 0.5))

	(recipe
		(product "iron-chest")
		(yield 1)
		(ingredients "iron-plate" 8)
		(time 0.5))

	(recipe
		(product "iron-gear-wheel")
		(yield 1)
		(ingredients "iron-plate" 2)
		(time 0.5))

	(recipe
		(product "iron-plate")
		(yield 1)
		(ingredients "iron-ore" 1)
		(time 3.5))

	(recipe
		(product "iron-stick")
		(yield 2)
		(ingredients "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "lab")
		(yield 1)
		(ingredients "electronic-circuit" 10 "iron-gear-wheel" 10 "transport-belt" 4)
		(time 2))

	(recipe
		(product "lamp")
		(yield 1)
		(ingredients "electronic-circuit" 1 "iron-plate" 1 "iron-stick" 3)
		(time 0.5))

	(recipe
		(product "land-mine")
		(yield 4)
		(ingredients "explosives" 2 "steel-plate" 1)
		(time 5))

	(recipe
		(product "landfill")
		(yield 1)
		(ingredients "stone" 20)
		(time 0.5))

	(recipe
		(product "laser-turret")
		(yield 1)
		(ingredients "battery" 12 "electronic-circuit" 20 "steel-plate" 20)
		(time 20))

	(recipe
		(product "light-armor")
		(yield 1)
		(ingredients "iron-plate" 40)
		(time 3))

	(recipe
		(product "locomotive")
		(yield 1)
		(ingredients "electronic-circuit" 10 "engine-unit" 20 "steel-plate" 30)
		(time 4))

	(recipe
		(product "logistic-robot")
		(yield 1)
		(ingredients "advanced-circuit" 2 "flying-robot-frame" 1)
		(time 0.5))

	(recipe
		(product "long-handed-inserter")
		(yield 1)
		(ingredients "inserter" 1 "iron-gear-wheel" 1 "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "low-density-structure")
		(yield 1)
		(ingredients "copper-plate" 5 "plastic-bar" 5 "steel-plate" 10)
		(time 30))

	(recipe
		(product "lubricant")
		(yield 10)
		(ingredients "heavy-oil" 10)
		(time 1))

	(recipe
		(product "medium-electric-pole")
		(yield 1)
		(ingredients "copper-plate" 2 "steel-plate" 2)
		(time 0.5))

	(recipe
		(product "military-science-pack")
		(yield 2)
		(ingredients "grenade" 1 "gun-turret" 1 "piercing-rounds-magazine" 1)
		(time 10))

	(recipe
		(product "modular-armor")
		(yield 1)
		(ingredients "advanced-circuit" 30 "steel-plate" 50)
		(time 15))

	(recipe
		(product "nightvision")
		(yield 1)
		(ingredients "advanced-circuit" 5 "steel-plate" 10)
		(time 10))

	(recipe
		(product "nuclear-fuel")
		(yield 1)
		(ingredients "rocket-fuel" 1 "uranium-235" 1)
		(time 60))

	(recipe
		(product "nuclear-reactor")
		(yield 1)
		(ingredients "advanced-circuit" 500 "concrete" 500 "copper-plate" 500 "steel-plate" 500)
		(time 8))

	(recipe
		(product "offshore-pump")
		(yield 1)
		(ingredients "electronic-circuit" 2 "iron-gear-wheel" 1 "pipe" 1)
		(time 0.5))

	(recipe
		(product "oil-refinery")
		(yield 1)
		(ingredients "electronic-circuit" 10 "iron-gear-wheel" 10 "pipe" 10 "steel-plate" 15 "stone-brick" 10)
		(time 8))

	(recipe
		(product "logistic-chest-passive-provider")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electronic-circuit" 3 "steel-chest" 1)
		(time 0.5))

	(recipe
		(product "personal-laser-defense")
		(yield 1)
		(ingredients "laser-turret" 5 "processing-unit" 1 "steel-plate" 5)
		(time 10))

	(recipe
		(product "personal-roboport")
		(yield 1)
		(ingredients "advanced-circuit" 10 "battery" 45 "iron-gear-wheel" 40 "steel-plate" 20)
		(time 10))

	(recipe
		(product "personal-roboport-mk2")
		(yield 1)
		(ingredients "personal-roboport" 5 "processing-unit" 100)
		(time 20))

	(recipe
		(product "piercing-rounds-magazine")
		(yield 1)
		(ingredients "copper-plate" 5 "firearm-magazine" 1 "steel-plate" 1)
		(time 3))

	(recipe
		(product "piercing-shotgun-shells")
		(yield 1)
		(ingredients "copper-plate" 5 "shotgun-shells" 2 "steel-plate" 2)
		(time 8))

	(recipe
		(product "pipe")
		(yield 1)
		(ingredients "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "pipe-to-ground")
		(yield 2)
		(ingredients "iron-plate" 5 "pipe" 10)
		(time 0.5))

	(recipe
		(product "pistol")
		(yield 1)
		(ingredients "copper-plate" 5 "iron-plate" 5)
		(time 5))

	(recipe
		(product "plastic-bar")
		(yield 2)
		(ingredients "coal" 1 "petroleum-gas" 20)
		(time 1))

	(recipe
		(product "poison-capsule")
		(yield 1)
		(ingredients "coal" 10 "electronic-circuit" 3 "steel-plate" 3)
		(time 8))

	(recipe
		(product "portable-fusion-reactor")
		(yield 1)
		(ingredients "processing-unit" 250)
		(time 10))

	(recipe
		(product "portable-solar-panel")
		(yield 1)
		(ingredients "advanced-circuit" 1 "solar-panel" 5 "steel-plate" 5)
		(time 10))

	(recipe
		(product "power-armor")
		(yield 1)
		(ingredients "electric-engine-unit" 20 "processing-unit" 40 "steel-plate" 40)
		(time 20))

	(recipe
		(product "power-armor-mk2")
		(yield 1)
		(ingredients "effectivity-module-3" 5 "processing-unit" 40 "speed-module-3" 5 "steel-plate" 40)
		(time 25))

	(recipe
		(product "power-switch")
		(yield 1)
		(ingredients "copper-cable" 5 "electronic-circuit" 2 "iron-plate" 5)
		(time 2))

	(recipe
		(product "processing-unit")
		(yield 1)
		(ingredients "advanced-circuit" 2 "electronic-circuit" 20 "sulfuric-acid" 5)
		(time 10))

	(recipe
		(product "production-science-pack")
		(yield 2)
		(ingredients "electric-engine-unit" 1 "electric-furnace" 1)
		(time 14))

	(recipe
		(product "productivity-module")
		(yield 1)
		(ingredients "advanced-circuit" 5 "electronic-circuit" 5)
		(time 15))

	(recipe
		(product "productivity-module-2")
		(yield 1)
		(ingredients "advanced-circuit" 5 "processing-unit" 5 "productivity-module" 4)
		(time 30))

	(recipe
		(product "productivity-module-3")
		(yield 1)
		(ingredients "advanced-circuit" 5 "processing-unit" 5 "productivity-module-2" 5)
		(time 60))

	(recipe
		(product "programmable-speaker")
		(yield 1)
		(ingredients "copper-cable" 5 "electronic-circuit" 4 "iron-plate" 5)
		(time 2))

	(recipe
		(product "pump")
		(yield 1)
		(ingredients "engine-unit" 1 "pipe" 1 "steel-plate" 1)
		(time 2))

	(recipe
		(product "pumpjack")
		(yield 1)
		(ingredients "electronic-circuit" 5 "iron-gear-wheel" 10 "pipe" 10 "steel-plate" 5)
		(time 5))

	(recipe
		(product "radar")
		(yield 1)
		(ingredients "electronic-circuit" 5 "iron-gear-wheel" 5 "iron-plate" 10)
		(time 0.5))

	(recipe
		(product "rail")
		(yield 2)
		(ingredients "iron-stick" 1 "steel-plate" 1 "stone" 1)
		(time 0.5))

	(recipe
		(product "rail-chain-signal")
		(yield 1)
		(ingredients "electronic-circuit" 1 "iron-plate" 5)
		(time 0.5))

	(recipe
		(product "rail-signal")
		(yield 1)
		(ingredients "electronic-circuit" 1 "iron-plate" 5)
		(time 0.5))

	(recipe
		(product "red-wire")
		(yield 1)
		(ingredients "copper-cable" 1 "electronic-circuit" 1)
		(time 0.5))

	(recipe
		(product "refined-concrete")
		(yield 10)
		(ingredients "concrete" 20 "iron-stick" 8 "steel-plate" 1 "water" 100)
		(time 15))

	(recipe
		(product "refined-hazard-concrete")
		(yield 10)
		(ingredients "refined-concrete" 10)
		(time 0.25))

	(recipe
		(product "repair-pack")
		(yield 1)
		(ingredients "electronic-circuit" 2 "iron-gear-wheel" 2)
		(time 0.5))

	(recipe
		(product "logistic-chest-requester")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electronic-circuit" 3 "steel-chest" 1)
		(time 0.5))

	(recipe
		(product "roboport")
		(yield 1)
		(ingredients "advanced-circuit" 45 "iron-gear-wheel" 45 "steel-plate" 45)
		(time 5))

	(recipe
		(product "rocket")
		(yield 1)
		(ingredients "electronic-circuit" 1 "explosives" 1 "iron-plate" 2)
		(time 8))

	(recipe
		(product "rocket-control-unit")
		(yield 1)
		(ingredients "processing-unit" 1 "speed-module" 1)
		(time 30))

	(recipe
		(product "rocket-fuel")
		(yield 1)
		(ingredients "solid-fuel" 10)
		(time 30))

	(recipe
		(product "rocket-launcher")
		(yield 1)
		(ingredients "electronic-circuit" 5 "iron-gear-wheel" 5 "iron-plate" 5)
		(time 10))

	(recipe
		(product "rocket-part")
		(yield 1)
		(ingredients "low-density-structure" 10 "rocket-control-unit" 10 "rocket-fuel" 10)
		(time 3))

	(recipe
		(product "rocket-silo")
		(yield 1)
		(ingredients "concrete" 1000 "electric-engine-unit" 200 "pipe" 100 "processing-unit" 200 "steel-plate" 1000)
		(time 30))

	(recipe
		(product "satellite")
		(yield 1)
		(ingredients "accumulator" 100 "low-density-structure" 100 "processing-unit" 100 "radar" 5 "rocket-fuel" 50 "solar-panel" 100)
		(time 5))

	(recipe
		(product "science-pack-1")
		(yield 1)
		(ingredients "copper-plate" 1 "iron-gear-wheel" 1)
		(time 5))

	(recipe
		(product "science-pack-2")
		(yield 1)
		(ingredients "inserter" 1 "transport-belt" 1)
		(time 6))

	(recipe
		(product "science-pack-3")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electric-mining-drill" 1 "engine-unit" 1)
		(time 12))

	(recipe
		(product "shotgun")
		(yield 1)
		(ingredients "copper-plate" 10 "iron-gear-wheel" 5 "iron-plate" 15 "wood" 5)
		(time 10))

	(recipe
		(product "shotgun-shells")
		(yield 1)
		(ingredients "copper-plate" 2 "iron-plate" 2)
		(time 3))

	(recipe
		(product "slowdown-capsule")
		(yield 1)
		(ingredients "coal" 5 "electronic-circuit" 2 "steel-plate" 2)
		(time 8))

	(recipe
		(product "small-electric-pole")
		(yield 2)
		(ingredients "copper-cable" 2 "wood" 2)
		(time 0.5))

	(recipe
		(product "solar-panel")
		(yield 1)
		(ingredients "copper-plate" 5 "electronic-circuit" 15 "steel-plate" 5)
		(time 10))

	(recipe
		(product "space-science-pack")
		(yield 1000)
		(ingredients "rocket-part" 100 "satellite" 1)
		(time 300))

	(recipe
		(product "speed-module")
		(yield 1)
		(ingredients "advanced-circuit" 5 "electronic-circuit" 5)
		(time 15))

	(recipe
		(product "speed-module-2")
		(yield 1)
		(ingredients "advanced-circuit" 5 "processing-unit" 5 "speed-module" 4)
		(time 30))

	(recipe
		(product "speed-module-3")
		(yield 1)
		(ingredients "advanced-circuit" 5 "processing-unit" 5 "speed-module-2" 5)
		(time 60))

	(recipe
		(product "splitter")
		(yield 1)
		(ingredients "electronic-circuit" 5 "iron-plate" 5 "transport-belt" 4)
		(time 1))

	(recipe
		(product "stack-filter-inserter")
		(yield 1)
		(ingredients "electronic-circuit" 5 "stack-inserter" 1)
		(time 0.5))

	(recipe
		(product "stack-inserter")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electronic-circuit" 15 "fast-inserter" 1 "iron-gear-wheel" 15)
		(time 0.5))

	(recipe
		(product "steam-engine")
		(yield 1)
		(ingredients "iron-gear-wheel" 8 "iron-plate" 10 "pipe" 5)
		(time 0.5))

	(recipe
		(product "steam-turbine")
		(yield 1)
		(ingredients "copper-plate" 50 "iron-gear-wheel" 50 "pipe" 20)
		(time 3))

	(recipe
		(product "steel-axe")
		(yield 1)
		(ingredients "iron-stick" 2 "steel-plate" 5)
		(time 0.5))

	(recipe
		(product "steel-chest")
		(yield 1)
		(ingredients "steel-plate" 8)
		(time 0.5))

	(recipe
		(product "steel-furnace")
		(yield 1)
		(ingredients "steel-plate" 6 "stone-brick" 10)
		(time 3))

	(recipe
		(product "steel-plate")
		(yield 1)
		(ingredients "iron-plate" 5)
		(time 35))

	(recipe
		(product "stone-brick")
		(yield 1)
		(ingredients "stone" 2)
		(time 3.5))

	(recipe
		(product "stone-furnace")
		(yield 1)
		(ingredients "stone" 5)
		(time 0.5))

	(recipe
		(product "stone-wall")
		(yield 1)
		(ingredients "stone-brick" 5)
		(time 0.5))

	(recipe
		(product "logistic-chest-storage")
		(yield 1)
		(ingredients "advanced-circuit" 1 "electronic-circuit" 3 "steel-chest" 1)
		(time 0.5))

	(recipe
		(product "storage-tank")
		(yield 1)
		(ingredients "iron-plate" 20 "steel-plate" 5)
		(time 3))

	(recipe
		(product "submachine-gun")
		(yield 1)
		(ingredients "copper-plate" 5 "iron-gear-wheel" 10 "iron-plate" 10)
		(time 10))

	(recipe
		(product "substation")
		(yield 1)
		(ingredients "advanced-circuit" 5 "copper-plate" 5 "steel-plate" 10)
		(time 0.5))

	(recipe
		(product "sulfur")
		(yield 2)
		(ingredients "petroleum-gas" 30 "water" 30)
		(time 1))

	(recipe
		(product "sulfuric-acid")
		(yield 50)
		(ingredients "iron-plate" 1 "sulfur" 5 "water" 100)
		(time 1))

	(recipe
		(product "tank")
		(yield 1)
		(ingredients "advanced-circuit" 10 "engine-unit" 32 "iron-gear-wheel" 15 "steel-plate" 50)
		(time 8))

	(recipe
		(product "train-stop")
		(yield 1)
		(ingredients "electronic-circuit" 5 "iron-plate" 10 "steel-plate" 3)
		(time 0.5))

	(recipe
		(product "transport-belt")
		(yield 2)
		(ingredients "iron-gear-wheel" 1 "iron-plate" 1)
		(time 0.5))

	(recipe
		(product "underground-belt")
		(yield 2)
		(ingredients "iron-plate" 10 "transport-belt" 5)
		(time 1))

	(recipe
		(product "uranium-cannon-shell")
		(yield 1)
		(ingredients "cannon-shell" 1 "uranium-238" 1)
		(time 12))

	(recipe
		(product "uranium-fuel-cell")
		(yield 10)
		(ingredients "iron-plate" 10 "uranium-235" 1 "uranium-238" 19)
		(time 10))

	(recipe
		(product "uranium-rounds-magazine")
		(yield 1)
		(ingredients "piercing-rounds-magazine" 1 "uranium-238" 1)
		(time 10))

	(recipe
		(product "used-up-uranium-fuel-cell")
		(yield 1)
		(ingredients "uranium-fuel-cell" 1)
		(time 200))

	(recipe
		(product "wood")
		(yield 2)
		(ingredients "raw-wood" 1)
		(time 0.5))

	(recipe
		(product "wooden-chest")
		(yield 1)
		(ingredients "wood" 4)
		(time 0.5))

)
