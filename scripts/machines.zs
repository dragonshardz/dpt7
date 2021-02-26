//vars
var shaft = <item:create:shaft>;
var lbelt = <item:create:belt_connector>;
var iebelt = <item:immersiveengineering:conveyor_basic>;
var fdmilk = <item:farmersdelight:milk_bottle>;
var bottle = <item:minecraft:glass_bottle>;
var fluidMilk = <fluid:create:milk>;
var createStand = <tag:items:create:upright_on_belt>;
var dough = <tag:items:forge:dough>;
var cbeans = <item:minecraft:cocoa_beans>;
var milk = <tag:items:forge:milk>;

//recipe removal
val removeMachineArray = [
  "immersiveengineering:crafting/conveyor_redstone",
	"immersiveengineering:crafting/conveyor_dropper",
	"immersiveengineering:crafting/conveyor_vertical",
	"immersiveengineering:crafting/conveyor_splitter",
	"immersiveengineering:crafting/conveyor_extract",
	"immersiveengineering:crafting/conveyor_covered",
	"immersiveengineering:crafting/conveyor_droppercovered",
	"immersiveengineering:crafting/conveyor_verticalcovered",
	"immersiveengineering:crafting/conveyor_extractcovered",
	"immersiveengineering:crafting/conveyor_splittercovered"
  ] as string[];

for str in removeMachineArray{
    craftingTable.removeByName(str);
}

//tag additions
createStand.add(fdmilk);

//remove create recipes
<recipetype:create:mixing>.removeRecipe(<item:farmersdelight:pie_crust>);
<recipetype:createaddition:rolling>.removeRecipe(<createaddition:gold_wire>);
<recipetype:createaddition:rolling>.removeRecipe(<createaddition:iron_wire>);
<recipetype:createaddition:rolling>.removeRecipe(<createaddition:copper_wire>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:createaddition:electric_motor>);
<recipetype:create:mechanical_crafting>.removeRecipe(<item:createaddition:alternator>);

//remove IE recipes
<recipetype:immersiveengineering:metal_press>.removeRecipe(<item:createaddition:gold_wire>);
<recipetype:immersiveengineering:metal_press>.removeRecipe(<item:createaddition:iron_wire>);

//conveyor fuckery
craftingTable.removeByName("immersiveengineering:crafting/conveyor_basic");
craftingTable.addShaped("newiebelts", iebelt * 4, [[shaft,lbelt,shaft]]);

//new create recipes
<recipetype:create:filling>.addRecipe("fill_milk_bottle", fdmilk, bottle, fluidMilk* 333);
<recipetype:create:mechanical_crafting>.addRecipe("cookiecraft", <item:minecraft:cookie>, [[dough, cbeans]]);
<recipetype:create:mechanical_crafting>.addRecipe("createfdpiecrust", <item:farmersdelight:pie_crust>, [[dough, milk, dough]]);
<recipetype:create:mixing>.addRecipe("mix_pie_crust", "none", <item:farmersdelight:pie_crust>, [dough, milk, dough]);
<recipetype:create:mechanical_crafting>.addRecipe("createfdapplepie", <item:farmersdelight:apple_pie>, [[<item:minecraft:air>, dough, <item:minecraft:air>], [<item:minecraft:apple>, <item:minecraft:apple>, <item:minecraft:apple>], [<tag:items:forge:sugar>, <item:farmersdelight:pie_crust>, <tag:items:forge:sugar>]]);
<recipetype:create:crushing>.addRecipe("createsawdust", [<item:immersiveengineering:dust_wood> % 100], <tag:items:minecraft:planks>);
<recipetype:create:mechanical_crafting>.addRecipe("createadditionelecmotor", <item:createaddition:electric_motor>, [[null, null, <item:create:andesite_alloy>, null, null], [null, <item:create:brass_sheet>, <item:immersiveengineering:wirecoil_copper>, <item:create:brass_sheet>, null], [<item:create:brass_sheet>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:rods/iron>, <item:immersiveengineering:wirecoil_copper>,<item:create:brass_sheet>], [null, <item:create:brass_sheet>, <item:immersiveengineering:wirecoil_copper>, <item:create:brass_sheet>, null], [null, null, <item:createaddition:capacitor>, null, null]]);
<recipetype:create:mechanical_crafting>.addRecipe("createadditionalternator", <item:createaddition:alternator>, [[<item:minecraft:air>, <item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>, <item:minecraft:air>], [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:rods/iron>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:createaddition:capacitor>, <item:immersiveengineering:wirecoil_electrum>, <item:createaddition:capacitor>, <tag:items:forge:plates/iron>]]);


