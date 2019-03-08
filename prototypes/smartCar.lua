
local smartCar = table.deepcopy(data.raw.car["car"])

smartCar.name = "smart-car"
smartCar.icons = {
	{
		icon=smartCar.icon,
		tint={r=1,g=0,b=0,a=0.3}
	},
}

local recipe = table.deepcopy(data.raw.["recipe"]["car"])

recipe.enabled = true
recipe.name = "smart-car"
recipe.ingredients = {{"engine",8}, {"iron-plate",20}, {"steel",5}, {"green-circuit":20}}
recipe.result = "smart-car"

data:extend{smartCar, recipe}
