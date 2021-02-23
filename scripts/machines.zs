//vars
var shaft = <item:create:shaft>;
var lbelt = <item:create:belt_connector>;
var iebelt = <item:immersiveengineering:conveyor_basic>;
var fdmilk = <item:farmersdelight:milk_bottle>;
var bottle = <item:minecraft:glass_bottle>;
var fluidMilk = <fluid:create:milk>;
var createStand = <tag:items:create:upright_on_belt>;

//tag additions
createStand.add(fdmilk);

//conveyor fuckery
craftingTable.removeByName("immersiveengineering:crafting/conveyor_basic");
craftingTable.addShaped("newiebelts", iebelt * 4, [[shaft,lbelt,shaft]]);

//new create recipes
<recipetype:create:filling>.addRecipe("fill_milk_bottle", fdmilk, bottle, fluidMilk* 333);