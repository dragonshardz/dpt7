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
<recipetype:immersiveengineering:sawmill>.removeByName("immersiveengineering:sawmill/spruce_log");
<recipetype:immersiveengineering:sawmill>.removeByName("immersiveengineering:sawmill/jungle_log");
<recipetype:immersiveengineering:sawmill>.removeByName("immersiveengineering:sawmill/dark_oak_log");
<recipetype:immersiveengineering:sawmill>.removeByName("immersiveengineering:sawmill/oak_log");
<recipetype:immersiveengineering:sawmill>.removeByName("immersiveengineering:sawmill/acacia_log");
<recipetype:immersiveengineering:sawmill>.removeByName("immersiveengineering:sawmill/birch_log");

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
<recipetype:create:mechanical_crafting>.addRecipe("createadditionelecmotor", <item:createaddition:electric_motor>, [[<item:minecraft:air>, <item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>, <item:minecraft:air>], [<item:minecraft:air>, <item:create:brass_sheet>, <item:immersiveengineering:wirecoil_copper>, <item:create:brass_sheet>, <item:minecraft:air>], [<item:create:brass_sheet>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:rods/iron>, <item:immersiveengineering:wirecoil_copper>,<item:create:brass_sheet>], [<item:minecraft:air>, <item:create:brass_sheet>, <item:immersiveengineering:wirecoil_copper>, <item:create:brass_sheet>, <item:minecraft:air>], [<item:minecraft:air>, <item:minecraft:air>, <item:createaddition:capacitor>, <item:minecraft:air>, <item:minecraft:air>]]);
<recipetype:create:mechanical_crafting>.addRecipe("createadditionalternator", <item:createaddition:alternator>, [[<item:minecraft:air>, <item:minecraft:air>, <item:create:andesite_alloy>, <item:minecraft:air>, <item:minecraft:air>], [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:rods/iron>, <item:immersiveengineering:wirecoil_copper>, <tag:items:forge:plates/iron>], [<tag:items:forge:plates/iron>, <item:createaddition:capacitor>, <item:immersiveengineering:wirecoil_electrum>, <item:createaddition:capacitor>, <tag:items:forge:plates/iron>]]);

//new stonecutter recipes
stoneCutter.addRecipe("scoakslab", <item:minecraft:oak_slab> * 2, <item:minecraft:oak_planks>);
stoneCutter.addRecipe("scspruceslab", <item:minecraft:spruce_slab> * 2, <item:minecraft:spruce_planks>);
stoneCutter.addRecipe("scbirchslab", <item:minecraft:birch_slab> * 2, <item:minecraft:birch_planks>);
stoneCutter.addRecipe("scjungleslab", <item:minecraft:jungle_slab> * 2, <item:minecraft:jungle_planks>);
stoneCutter.addRecipe("scacaciaslab", <item:minecraft:acacia_slab> * 2, <item:minecraft:acacia_planks>);
stoneCutter.addRecipe("scdarkoakslab", <item:minecraft:dark_oak_slab> * 2, <item:minecraft:dark_oak_planks>);
stoneCutter.addRecipe("sccrimsonslab", <item:minecraft:crimson_slab> * 2, <item:minecraft:crimson_planks>);
stoneCutter.addRecipe("scwarpedslab", <item:minecraft:warped_slab> * 2, <item:minecraft:warped_planks>);
stoneCutter.addRecipe("scrosewoodslab", <item:atmospheric:rosewood_slab> * 2, <item:atmospheric:rosewood_planks>);
stoneCutter.addRecipe("scmoradoslab", <item:atmospheric:morado_slab> * 2, <item:atmospheric:morado_planks>);
stoneCutter.addRecipe("scyuccaslab", <item:atmospheric:yucca_slab> * 2, <item:atmospheric:yucca_planks>);
stoneCutter.addRecipe("sckousaslab", <item:atmospheric:kousa_slab> * 2, <item:atmospheric:kousa_planks>);
stoneCutter.addRecipe("scaspenslab", <item:atmospheric:aspen_slab> * 2, <item:atmospheric:aspen_planks>);
stoneCutter.addRecipe("scgrimwoodslab", <item:atmospheric:grimwood_slab> * 2, <item:atmospheric:grimwood_planks>);
stoneCutter.addRecipe("scmapleslab", <item:autumnity:maple_slab> * 2, <item:autumnity:maple_planks>);
stoneCutter.addRecipe("scfirslab", <item:biomesoplenty:fir_slab> * 2, <item:biomesoplenty:fir_planks>);
stoneCutter.addRecipe("scredwoodslab", <item:biomesoplenty:redwood_slab> * 2, <item:biomesoplenty:redwood_planks>);
stoneCutter.addRecipe("sccherryslab", <item:biomesoplenty:cherry_slab> * 2, <item:biomesoplenty:cherry_planks>);
stoneCutter.addRecipe("scmahoganyslab", <item:biomesoplenty:mahogany_slab> * 2, <item:biomesoplenty:mahogany_planks>);
stoneCutter.addRecipe("scjacarandaslab", <item:biomesoplenty:jacaranda_slab> * 2, <item:biomesoplenty:jacaranda_planks>);
stoneCutter.addRecipe("scpalmslab", <item:biomesoplenty:palm_slab> * 2, <item:biomesoplenty:palm_planks>);
stoneCutter.addRecipe("scwillowslab", <item:biomesoplenty:willow_slab> * 2, <item:biomesoplenty:willow_planks>);
stoneCutter.addRecipe("scdeadslab", <item:biomesoplenty:dead_slab> * 2, <item:biomesoplenty:dead_planks>);
stoneCutter.addRecipe("scmagicslab", <item:biomesoplenty:magic_slab> * 2, <item:biomesoplenty:magic_planks>);
stoneCutter.addRecipe("scumbranslab", <item:biomesoplenty:umbran_slab> * 2, <item:biomesoplenty:umbran_planks>);
stoneCutter.addRecipe("schellbarkslab", <item:biomesoplenty:hellbark_slab> * 2, <item:biomesoplenty:hellbark_planks>);
stoneCutter.addRecipe("scredmushroomslab", <item:enhanced_mushrooms:red_mushroom_slab> * 2, <item:enhanced_mushrooms:red_mushroom_planks>);
stoneCutter.addRecipe("scbrownmushroomslab", <item:enhanced_mushrooms:brown_mushroom_slab> * 2, <item:enhanced_mushrooms:brown_mushroom_planks>);
stoneCutter.addRecipe("scglowshroomslab", <item:enhanced_mushrooms:glowshroom_slab> * 2, <item:enhanced_mushrooms:glowshroom_planks>);
stoneCutter.addRecipe("scpoiselab", <item:endergetic:poise_slab> * 2, <item:endergetic:poise_planks>);
stoneCutter.addRecipe("scdriftwoodslab", <item:upgrade_aquatic:driftwood_slab> * 2, <item:upgrade_aquatic:driftwood_planks>);
stoneCutter.addRecipe("scriverslab", <item:upgrade_aquatic:river_slab> * 2, <item:upgrade_aquatic:river_planks>);

stoneCutter.addRecipe("scoakstairs", <item:minecraft:oak_stairs>, <item:minecraft:oak_planks>);
stoneCutter.addRecipe("scsprucestairs", <item:minecraft:spruce_stairs>, <item:minecraft:spruce_planks>);
stoneCutter.addRecipe("scbirchstairs", <item:minecraft:birch_stairs>, <item:minecraft:birch_planks>);
stoneCutter.addRecipe("scjunglestairs", <item:minecraft:jungle_stairs>, <item:minecraft:jungle_planks>);
stoneCutter.addRecipe("scacaciastairs", <item:minecraft:acacia_stairs>, <item:minecraft:acacia_planks>);
stoneCutter.addRecipe("scdarkoakstairs", <item:minecraft:dark_oak_stairs>, <item:minecraft:dark_oak_planks>);
stoneCutter.addRecipe("sccrimsonstairs", <item:minecraft:crimson_stairs>, <item:minecraft:crimson_planks>);
stoneCutter.addRecipe("scwarpedstairs", <item:minecraft:warped_stairs>, <item:minecraft:warped_planks>);
stoneCutter.addRecipe("scrosewoodstairs", <item:atmospheric:rosewood_stairs>, <item:atmospheric:rosewood_planks>);
stoneCutter.addRecipe("scmoradostairs", <item:atmospheric:morado_stairs>, <item:atmospheric:morado_planks>);
stoneCutter.addRecipe("scyuccastairs", <item:atmospheric:yucca_stairs>, <item:atmospheric:yucca_planks>);
stoneCutter.addRecipe("sckousastairs", <item:atmospheric:kousa_stairs>, <item:atmospheric:kousa_planks>);
stoneCutter.addRecipe("scaspenstairs", <item:atmospheric:aspen_stairs>, <item:atmospheric:aspen_planks>);
stoneCutter.addRecipe("scgrimwoodstairs", <item:atmospheric:grimwood_stairs>, <item:atmospheric:grimwood_planks>);
stoneCutter.addRecipe("scmaplestairs", <item:autumnity:maple_stairs>, <item:autumnity:maple_planks>);
stoneCutter.addRecipe("scfirstairs", <item:biomesoplenty:fir_stairs>, <item:biomesoplenty:fir_planks>);
stoneCutter.addRecipe("scredwoodstairs", <item:biomesoplenty:redwood_stairs>, <item:biomesoplenty:redwood_planks>);
stoneCutter.addRecipe("sccherrystairs", <item:biomesoplenty:cherry_stairs>, <item:biomesoplenty:cherry_planks>);
stoneCutter.addRecipe("scmahoganystairs", <item:biomesoplenty:mahogany_stairs>, <item:biomesoplenty:mahogany_planks>);
stoneCutter.addRecipe("scjacarandastairs", <item:biomesoplenty:jacaranda_stairs>, <item:biomesoplenty:jacaranda_planks>);
stoneCutter.addRecipe("scpalmstairs", <item:biomesoplenty:palm_stairs>, <item:biomesoplenty:palm_planks>);
stoneCutter.addRecipe("scwillowstairs", <item:biomesoplenty:willow_stairs>, <item:biomesoplenty:willow_planks>);
stoneCutter.addRecipe("scdeadstairs", <item:biomesoplenty:dead_stairs>, <item:biomesoplenty:dead_planks>);
stoneCutter.addRecipe("scmagicstairs", <item:biomesoplenty:magic_stairs>, <item:biomesoplenty:magic_planks>);
stoneCutter.addRecipe("scumbranstairs", <item:biomesoplenty:umbran_stairs>, <item:biomesoplenty:umbran_planks>);
stoneCutter.addRecipe("schellbarkstairs", <item:biomesoplenty:hellbark_stairs>, <item:biomesoplenty:hellbark_planks>);
stoneCutter.addRecipe("scredmushroomstairs", <item:enhanced_mushrooms:red_mushroom_stairs>, <item:enhanced_mushrooms:red_mushroom_planks>);
stoneCutter.addRecipe("scbrownmushroomstairs", <item:enhanced_mushrooms:brown_mushroom_stairs>, <item:enhanced_mushrooms:brown_mushroom_planks>);
stoneCutter.addRecipe("scglowshroomstairs", <item:enhanced_mushrooms:glowshroom_stairs>, <item:enhanced_mushrooms:glowshroom_planks>);
stoneCutter.addRecipe("scpoisetair", <item:endergetic:poise_stairs>, <item:endergetic:poise_planks>);
stoneCutter.addRecipe("scdriftwoodstairs", <item:upgrade_aquatic:driftwood_stairs>, <item:upgrade_aquatic:driftwood_planks>);
stoneCutter.addRecipe("scriverstairs", <item:upgrade_aquatic:river_stairs>, <item:upgrade_aquatic:river_planks>);

stoneCutter.addRecipe("scoakvertslab", <item:quark:oak_vertical_slab> * 2, <item:minecraft:oak_planks>);
stoneCutter.addRecipe("scsprucevertslab", <item:quark:spruce_vertical_slab> * 2, <item:minecraft:spruce_planks>);
stoneCutter.addRecipe("scbirchvertslab", <item:quark:birch_vertical_slab> * 2, <item:minecraft:birch_planks>);
stoneCutter.addRecipe("scjunglevertslab", <item:quark:jungle_vertical_slab> * 2, <item:minecraft:jungle_planks>);
stoneCutter.addRecipe("scacaciavertslab", <item:quark:acacia_vertical_slab> * 2, <item:minecraft:acacia_planks>);
stoneCutter.addRecipe("scdarkoakvertslab", <item:quark:dark_oak_vertical_slab> * 2, <item:minecraft:dark_oak_planks>);
stoneCutter.addRecipe("sccrimsonvertslab", <item:quark:crimson_vertical_slab> * 2, <item:minecraft:crimson_planks>);
stoneCutter.addRecipe("scwarpedvertslab", <item:quark:warped_vertical_slab> * 2, <item:minecraft:warped_planks>);
stoneCutter.addRecipe("scrosewoodvertslab", <item:atmospheric:rosewood_vertical_slab> * 2, <item:atmospheric:rosewood_planks>);
stoneCutter.addRecipe("scmoradovertslab", <item:atmospheric:morado_vertical_slab> * 2, <item:atmospheric:morado_planks>);
stoneCutter.addRecipe("scyuccavertslab", <item:atmospheric:yucca_vertical_slab> * 2, <item:atmospheric:yucca_planks>);
stoneCutter.addRecipe("sckousavertslab", <item:atmospheric:kousa_vertical_slab> * 2, <item:atmospheric:kousa_planks>);
stoneCutter.addRecipe("scaspenvertslab", <item:atmospheric:aspen_vertical_slab> * 2, <item:atmospheric:aspen_planks>);
stoneCutter.addRecipe("scgrimwoodvertslab", <item:atmospheric:grimwood_vertical_slab> * 2, <item:atmospheric:grimwood_planks>);
stoneCutter.addRecipe("scmaplevertslab", <item:autumnity:maple_vertical_slab> * 2, <item:autumnity:maple_planks>);
//stoneCutter.addRecipe("scfirvertslab", <item:biomesoplenty:fir_vertical_slab> * 2, <item:biomesoplenty:fir_planks>);
//stoneCutter.addRecipe("scredwoodvertslab", <item:biomesoplenty:redwood_vertical_slab> * 2, <item:biomesoplenty:redwood_planks>);
//stoneCutter.addRecipe("sccherryvertslab", <item:biomesoplenty:cherry_vertical_slab> * 2, <item:biomesoplenty:cherry_planks>);
//stoneCutter.addRecipe("scmahoganyvertslab", <item:biomesoplenty:mahogany_vertical_slab> * 2, <item:biomesoplenty:mahogany_planks>);
//stoneCutter.addRecipe("scjacarandavertslab", <item:biomesoplenty:jacaranda_vertical_slab> * 2, <item:biomesoplenty:jacaranda_planks>);
//stoneCutter.addRecipe("scpalmvertslab", <item:biomesoplenty:palm_vertical_slab> * 2, <item:biomesoplenty:palm_planks>);
//stoneCutter.addRecipe("scwillowvertslab", <item:biomesoplenty:willow_vertical_slab> * 2, <item:biomesoplenty:willow_planks>);
//stoneCutter.addRecipe("scdeadvertslab", <item:biomesoplenty:dead_vertical_slab> * 2, <item:biomesoplenty:dead_planks>);
//stoneCutter.addRecipe("scmagicvertslab", <item:biomesoplenty:magic_vertical_slab> * 2, <item:biomesoplenty:magic_planks>);
//stoneCutter.addRecipe("scumbranvertslab", <item:biomesoplenty:umbran_vertical_slab> * 2, <item:biomesoplenty:umbran_planks>);
//stoneCutter.addRecipe("schellbarkvertslab", <item:biomesoplenty:hellbark_vertical_slab> * 2, <item:biomesoplenty:hellbark_planks>);
stoneCutter.addRecipe("scredmushroomvertslab", <item:enhanced_mushrooms:red_mushroom_vertical_slab> * 2, <item:enhanced_mushrooms:red_mushroom_planks>);
stoneCutter.addRecipe("scbrownmushroomvertslab", <item:enhanced_mushrooms:brown_mushroom_vertical_slab> * 2, <item:enhanced_mushrooms:brown_mushroom_planks>);
stoneCutter.addRecipe("scglowshroomvertslab", <item:enhanced_mushrooms:glowshroom_vertical_slab> * 2, <item:enhanced_mushrooms:glowshroom_planks>);
stoneCutter.addRecipe("scpoisetair", <item:endergetic:poise_vertical_slab> * 2, <item:endergetic:poise_planks>);
stoneCutter.addRecipe("scdriftwoodvertslab", <item:upgrade_aquatic:driftwood_vertical_slab> * 2, <item:upgrade_aquatic:driftwood_planks>);
stoneCutter.addRecipe("scriververtslab", <item:upgrade_aquatic:river_vertical_slab> * 2, <item:upgrade_aquatic:river_planks>);

//new IE recipes
<recipetype:immersiveengineering:sawmill>.addRecipe("ieoaklog", <item:minecraft:oak_log>, 1600, <item:minecraft:stripped_oak_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iesprucelog", <item:minecraft:spruce_log>, 1600, <item:minecraft:stripped_spruce_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:spruce_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iebirchlog", <item:minecraft:birch_log>, 1600, <item:minecraft:stripped_birch_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:birch_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iejunglelog", <item:minecraft:jungle_log>, 1600, <item:minecraft:stripped_jungle_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:jungle_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieacacialog", <item:minecraft:acacia_log>, 1600, <item:minecraft:stripped_acacia_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:acacia_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iedarkoaklog", <item:minecraft:dark_oak_log>, 1600, <item:minecraft:stripped_dark_oak_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:dark_oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iecrimsonstem", <item:minecraft:crimson_stem>, 1600, <item:minecraft:stripped_crimson_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:crimson_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iewarpedstem", <item:minecraft:warped_stem>, 1600, <item:minecraft:stripped_warped_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:warped_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieoakwood", <item:minecraft:oak_wood>, 1600, <item:minecraft:stripped_oak_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iesprucewood", <item:minecraft:spruce_wood>, 1600, <item:minecraft:stripped_spruce_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:spruce_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iebirchwood", <item:minecraft:birch_wood>, 1600, <item:minecraft:stripped_birch_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:birch_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iejunglewood", <item:minecraft:jungle_wood>, 1600, <item:minecraft:stripped_jungle_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:jungle_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieacaciawood", <item:minecraft:acacia_wood>, 1600, <item:minecraft:stripped_acacia_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:acacia_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iedarkoakwood", <item:minecraft:dark_oak_wood>, 1600, <item:minecraft:stripped_dark_oak_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:dark_oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iecrimsonhyphae", <item:minecraft:crimson_hyphae>, 1600, <item:minecraft:stripped_crimson_hyphae>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:crimson_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iewarpedhyphae", <item:minecraft:warped_hyphae>, 1600, <item:minecraft:stripped_warped_hyphae>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:minecraft:warped_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ierosewoodlog", <item:atmospheric:rosewood_log>, 1600, <item:atmospheric:stripped_rosewood_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:rosewood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemoradolog", <item:atmospheric:morado_log>, 1600, <item:atmospheric:stripped_morado_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:morado_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieyuccalog", <item:atmospheric:yucca_log>, 1600, <item:atmospheric:stripped_yucca_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:yucca_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iekousalog", <item:atmospheric:kousa_log>, 1600, <item:atmospheric:stripped_kousa_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:kousa_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieaspenlog", <item:atmospheric:aspen_log>, 1600, <item:atmospheric:stripped_aspen_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iewatchfulaspenlog", <item:atmospheric:watchful_aspen_log>, 1600, <item:atmospheric:stripped_aspen_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iecrustoselog", <item:atmospheric:crustose_log>, 1600, <item:atmospheric:stripped_aspen_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iegrimwoodlog", <item:atmospheric:grimwood_log>, 1600, <item:atmospheric:stripped_grimwood_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:grimwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ierosewood", <item:atmospheric:rosewood>, 1600, <item:atmospheric:stripped_rosewood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:rosewood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemoradowood", <item:atmospheric:morado_wood>, 1600, <item:atmospheric:stripped_morado_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:morado_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieyuccawood", <item:atmospheric:yucca_wood>, 1600, <item:atmospheric:stripped_yucca_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:yucca_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iekousawood", <item:atmospheric:kousa_wood>, 1600, <item:atmospheric:stripped_kousa_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:kousa_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieaspenwood", <item:atmospheric:aspen_wood>, 1600, <item:atmospheric:stripped_aspen_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iewatchfulaspenwood", <item:atmospheric:watchful_aspen_wood>, 1600, <item:atmospheric:stripped_aspen_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iecrustosewood", <item:atmospheric:crustose_wood>, 1600, <item:atmospheric:stripped_aspen_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iegrimwood", <item:atmospheric:grimwood>, 1600, <item:atmospheric:stripped_grimwood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:atmospheric:grimwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemaplelog", <item:autumnity:maple_log>, 1600, <item:autumnity:stripped_maple_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:autumnity:maple_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iesappymaplelog", <item:autumnity:sappy_maple_log>, 1600, <item:autumnity:stripped_maple_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:autumnity:maple_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iefirlog", <item:biomesoplenty:fir_log>, 1600, <item:biomesoplenty:stripped_fir_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:fir_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieredwoodlog", <item:biomesoplenty:redwood_log>, 1600, <item:biomesoplenty:stripped_redwood_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:redwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iecherrylog", <item:biomesoplenty:cherry_log>, 1600, <item:biomesoplenty:stripped_cherry_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:cherry_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemahoganylog", <item:biomesoplenty:mahogany_log>, 1600, <item:biomesoplenty:stripped_mahogany_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:mahogany_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iejacarandalog", <item:biomesoplenty:jacaranda_log>, 1600, <item:biomesoplenty:stripped_jacaranda_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:jacaranda_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iepalmlog", <item:biomesoplenty:palm_log>, 1600, <item:biomesoplenty:stripped_palm_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:palm_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iewillowlog", <item:biomesoplenty:willow_log>, 1600, <item:biomesoplenty:stripped_willow_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:willow_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemaplewood", <item:autumnity:maple_wood>, 1600, <item:autumnity:stripped_maple_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:autumnity:maple_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iesappymaplewood", <item:autumnity:sappy_maple_wood>, 1600, <item:autumnity:stripped_maple_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:autumnity:maple_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iefirwood", <item:biomesoplenty:fir_wood>, 1600, <item:biomesoplenty:stripped_fir_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:fir_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieredwoodwood", <item:biomesoplenty:redwood_wood>, 1600, <item:biomesoplenty:stripped_redwood_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:redwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iecherrywood", <item:biomesoplenty:cherry_wood>, 1600, <item:biomesoplenty:stripped_cherry_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:cherry_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemahoganywood", <item:biomesoplenty:mahogany_wood>, 1600, <item:biomesoplenty:stripped_mahogany_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:mahogany_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iejacarandawood", <item:biomesoplenty:jacaranda_wood>, 1600, <item:biomesoplenty:stripped_jacaranda_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:jacaranda_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iepalmwood", <item:biomesoplenty:palm_wood>, 1600, <item:biomesoplenty:stripped_palm_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:palm_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iewillowwood", <item:biomesoplenty:willow_wood>, 1600, <item:biomesoplenty:stripped_willow_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:willow_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iedeadlog", <item:biomesoplenty:dead_log>, 1600, <item:biomesoplenty:stripped_dead_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:dead_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemagiclog", <item:biomesoplenty:magic_log>, 1600, <item:biomesoplenty:stripped_magic_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:magic_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieumbranlog", <item:biomesoplenty:umbran_log>, 1600, <item:biomesoplenty:stripped_umbran_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:umbran_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iehellbarklog", <item:biomesoplenty:hellbark_log>, 1600, <item:biomesoplenty:stripped_hellbark_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:hellbark_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieredmushroomstem", <item:enhanced_mushrooms:red_mushroom_stem>, 1600, <item:enhanced_mushrooms:stripped_red_mushroom_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:enhanced_mushrooms:red_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iebrownmushroomstem", <item:enhanced_mushrooms:brown_mushroom_stem>, 1600, <item:enhanced_mushrooms:stripped_brown_mushroom_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:enhanced_mushrooms:brown_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieglowshroomstem", <item:enhanced_mushrooms:glowshroom_stem>, 1600, <item:enhanced_mushrooms:stripped_glowshroom_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:enhanced_mushrooms:glowshroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iepoisestem", <item:endergetic:poise_stem>, 1600, <item:endergetic:stripped_poise_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:endergetic:poise_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieglowingpoisestem", <item:endergetic:glowing_poise_stem>, 1600, <item:endergetic:stripped_poise_stem>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:endergetic:poise_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iedeadwood", <item:biomesoplenty:dead_wood>, 1600, <item:biomesoplenty:stripped_dead_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:dead_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iemagicwood", <item:biomesoplenty:magic_wood>, 1600, <item:biomesoplenty:stripped_magic_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:magic_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieumbranwood", <item:biomesoplenty:umbran_wood>, 1600, <item:biomesoplenty:stripped_umbran_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:umbran_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iehellbarkwood", <item:biomesoplenty:hellbark_wood>, 1600, <item:biomesoplenty:stripped_hellbark_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:biomesoplenty:hellbark_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieredmushroomhyphae", <item:enhanced_mushrooms:red_mushroom_hyphae>, 1600, <item:enhanced_mushrooms:stripped_red_mushroom_hyphae>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:enhanced_mushrooms:red_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iebrownmushroomhyphae", <item:enhanced_mushrooms:brown_mushroom_hyphae>, 1600, <item:enhanced_mushrooms:stripped_brown_mushroom_hyphae>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:enhanced_mushrooms:brown_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieglowshroomhyphae", <item:enhanced_mushrooms:glowshroom_hyphae>, 1600, <item:enhanced_mushrooms:stripped_glowshroom_hyphae>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:enhanced_mushrooms:glowshroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iepoisewood", <item:endergetic:poise_wood>, 1600, <item:endergetic:stripped_poise_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:endergetic:poise_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieglowingpoisewood", <item:endergetic:glowing_poise_wood>, 1600, <item:endergetic:stripped_poise_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:endergetic:poise_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iedriftwoodlog", <item:upgrade_aquatic:driftwood_log>, 1600, <item:upgrade_aquatic:stripped_driftwood_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:upgrade_aquatic:driftwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieriverlog", <item:upgrade_aquatic:river_log>, 1600, <item:upgrade_aquatic:stripped_river_log>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:upgrade_aquatic:river_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("iedriftwood", <item:upgrade_aquatic:driftwood>, 1600, <item:upgrade_aquatic:stripped_driftwood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:upgrade_aquatic:driftwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("ieriverwood", <item:upgrade_aquatic:river_wood>, 1600, <item:upgrade_aquatic:stripped_river_wood>, [<item:farmersdelight:tree_bark>, <item:immersiveengineering:dust_wood>], <item:upgrade_aquatic:river_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("oakstripped", <item:minecraft:stripped_oak_log>, 1600, <item:minecraft:oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("sprucestripped", <item:minecraft:stripped_spruce_log>, 1600, <item:minecraft:spruce_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("birchstripped", <item:minecraft:stripped_birch_log>, 1600, <item:minecraft:oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("junglestripped", <item:minecraft:stripped_jungle_log>, 1600, <item:minecraft:jungle_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("acaciastripped", <item:minecraft:stripped_acacia_log>, 1600, <item:minecraft:acacia_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("darkoakstripped", <item:minecraft:stripped_dark_oak_log>, 1600, <item:minecraft:dark_oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("crimsonstripped", <item:minecraft:stripped_crimson_stem>, 1600, <item:minecraft:crimson_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("warpedstripped", <item:minecraft:stripped_warped_stem>, 1600, <item:minecraft:warped_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("oakwoodstripped", <item:minecraft:stripped_oak_wood>, 1600, <item:minecraft:oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("sprucewoodstripped", <item:minecraft:stripped_spruce_wood>, 1600, <item:minecraft:spruce_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("birchwoodstripped", <item:minecraft:stripped_birch_wood>, 1600, <item:minecraft:birch_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("junglewoodstripped", <item:minecraft:stripped_jungle_wood>, 1600, <item:minecraft:jungle_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("acaciawoodstripped", <item:minecraft:stripped_acacia_wood>, 1600, <item:minecraft:acacia_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("darkoakwoodstripped", <item:minecraft:stripped_dark_oak_wood>, 1600, <item:minecraft:dark_oak_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("crimsonhyphaestripped", <item:minecraft:stripped_crimson_hyphae>, 1600, <item:minecraft:crimson_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("warpedhyphaestripped", <item:minecraft:stripped_warped_hyphae>, 1600, <item:minecraft:warped_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("rosewoodstripped", <item:atmospheric:stripped_rosewood_log>, 1600, <item:atmospheric:rosewood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("moradostripped", <item:atmospheric:stripped_morado_log>, 1600, <item:atmospheric:morado_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("yuccastripped", <item:atmospheric:stripped_yucca_log>, 1600, <item:atmospheric:yucca_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("kousastripped", <item:atmospheric:stripped_kousa_log>, 1600, <item:atmospheric:kousa_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("aspenstripped", <item:atmospheric:stripped_aspen_log>, 1600, <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("grimwoodstripped", <item:atmospheric:stripped_grimwood_log>, 1600, <item:atmospheric:grimwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("rosewoodwoodstripped", <item:atmospheric:stripped_rosewood>, 1600, <item:atmospheric:rosewood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("moradowoodstripped", <item:atmospheric:stripped_morado_wood>, 1600, <item:atmospheric:morado_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("yuccawoodstripped", <item:atmospheric:stripped_yucca_wood>, 1600, <item:atmospheric:yucca_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("kousawoodstripped", <item:atmospheric:stripped_kousa_wood>, 1600, <item:atmospheric:kousa_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("aspenwoodstripped", <item:atmospheric:stripped_aspen_wood>, 1600, <item:atmospheric:aspen_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("grimwoodwoodstripped", <item:atmospheric:stripped_grimwood>, 1600, <item:atmospheric:grimwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("maplestripped", <item:autumnity:stripped_maple_log>, 1600, <item:autumnity:maple_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("maplewoodstripped", <item:autumnity:stripped_maple_wood>, 1600, <item:autumnity:maple_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("firstripped", <item:biomesoplenty:stripped_fir_log>, 1600, <item:biomesoplenty:fir_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("redwoodstripped", <item:biomesoplenty:stripped_redwood_log>, 1600, <item:biomesoplenty:redwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("cherrystripped", <item:biomesoplenty:stripped_cherry_log>, 1600, <item:biomesoplenty:cherry_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("mahoganystripped", <item:biomesoplenty:stripped_mahogany_log>, 1600, <item:biomesoplenty:mahogany_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("jacarandastripped", <item:biomesoplenty:stripped_jacaranda_log>, 1600, <item:biomesoplenty:jacaranda_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("palmstripped", <item:biomesoplenty:stripped_palm_log>, 1600, <item:biomesoplenty:palm_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("willowstripped", <item:biomesoplenty:stripped_willow_log>, 1600, <item:biomesoplenty:willow_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("deadstripped", <item:biomesoplenty:stripped_dead_log>, 1600, <item:biomesoplenty:dead_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("magicstripped", <item:biomesoplenty:stripped_magic_log>, 1600, <item:biomesoplenty:magic_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("umbranstripped", <item:biomesoplenty:stripped_umbran_log>, 1600, <item:biomesoplenty:umbran_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("hellbarkstripped", <item:biomesoplenty:stripped_hellbark_log>, 1600, <item:biomesoplenty:hellbark_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("firwoodstripped", <item:biomesoplenty:stripped_fir_wood>, 1600, <item:biomesoplenty:fir_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("redwoodwoodstripped", <item:biomesoplenty:stripped_redwood_wood>, 1600, <item:biomesoplenty:redwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("cherrywoodstripped", <item:biomesoplenty:stripped_cherry_wood>, 1600, <item:biomesoplenty:cherry_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("mahoganywoodstripped", <item:biomesoplenty:stripped_mahogany_wood>, 1600, <item:biomesoplenty:mahogany_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("jacarandawoodstripped", <item:biomesoplenty:stripped_jacaranda_wood>, 1600, <item:biomesoplenty:jacaranda_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("palmwoodstripped", <item:biomesoplenty:stripped_palm_wood>, 1600, <item:biomesoplenty:palm_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("willowwoodstripped", <item:biomesoplenty:stripped_willow_wood>, 1600, <item:biomesoplenty:willow_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("deadwoodstripped", <item:biomesoplenty:stripped_dead_wood>, 1600, <item:biomesoplenty:dead_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("magicwoodstripped", <item:biomesoplenty:stripped_magic_wood>, 1600, <item:biomesoplenty:magic_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("umbranwoodstripped", <item:biomesoplenty:stripped_umbran_wood>, 1600, <item:biomesoplenty:umbran_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("hellbarkwoodstripped", <item:biomesoplenty:stripped_hellbark_wood>, 1600, <item:biomesoplenty:hellbark_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("redmushroomstripped", <item:enhanced_mushrooms:stripped_red_mushroom_stem>, 1600, <item:enhanced_mushrooms:red_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("brownmushroomstripped", <item:enhanced_mushrooms:stripped_brown_mushroom_stem>, 1600, <item:enhanced_mushrooms:brown_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("glowshroomstripped", <item:enhanced_mushrooms:stripped_glowshroom_stem>, 1600, <item:enhanced_mushrooms:glowshroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("redhyphaestripped", <item:enhanced_mushrooms:stripped_red_mushroom_hyphae>, 1600, <item:enhanced_mushrooms:red_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("brownhyphaestripped", <item:enhanced_mushrooms:stripped_brown_mushroom_hyphae>, 1600, <item:enhanced_mushrooms:brown_mushroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("glowshroomhyphaestripped", <item:enhanced_mushrooms:stripped_glowshroom_hyphae>, 1600, <item:enhanced_mushrooms:glowshroom_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("poisestripped", <item:endergetic:stripped_poise_stem>, 1600, <item:endergetic:poise_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("poisewoodstripped", <item:endergetic:stripped_poise_wood>, 1600, <item:endergetic:poise_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("driftwoodstripped", <item:upgrade_aquatic:stripped_driftwood_log>, 1600, <item:upgrade_aquatic:driftwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("riverstripped", <item:upgrade_aquatic:stripped_river_log>, 1600, <item:upgrade_aquatic:river_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("driftwoodwoodstripped", <item:upgrade_aquatic:stripped_driftwood>, 1600, <item:upgrade_aquatic:driftwood_planks> * 6, [<item:immersiveengineering:dust_wood>]);
<recipetype:immersiveengineering:sawmill>.addRecipe("riverwoodstripped", <item:upgrade_aquatic:stripped_river_wood>, 1600, <item:upgrade_aquatic:river_planks> * 6, [<item:immersiveengineering:dust_wood>]);

