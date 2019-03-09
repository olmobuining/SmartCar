
local smartCar = table.deepcopy(data.raw.car["car"])

smartCar.name = "smart-car"
smartCar.icons = {
	{
		icon=smartCar.icon,
		tint={r=1,g=0,b=0,a=0.3}
	},
}

local item = {
	type = "item",
	name = "smart-car",
	icon = "__base__/graphics/icons/car.png",
	icon_size = 32,
    subgroup = "transport",
    place_result = "smart-car",
	stack_size = 1,
}

local recipe = table.deepcopy(data.raw["recipe"]["car"])

recipe.enabled = true
recipe.name = "smart-car"
recipe.ingredients = {{"engine-unit",8},{"iron-plate",20},{"steel-plate",5},{"electronic-circuit",20}}
recipe.result = "smart-car"

data:extend({smartCar, item, recipe})
