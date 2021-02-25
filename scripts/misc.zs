import crafttweaker.api.item.IItemStack;

//vars
var worldStone = <tag:items:crafttweaker:worldstone>;

//sets what we want to make craftable into cobble and adds to the tag
val worldStoneArray = [
	<item:minecraft:diorite>,
	<item:minecraft:andesite>,
	<item:minecraft:granite>,
	<item:minecraft:blackstone>,
	<item:atmospheric:smooth_arid_sandstone>,
	<item:atmospheric:smooth_red_arid_sandstone>,
	<item:biomesoplenty:smooth_white_sandstone>,
	<item:create:gabbro>,
	<item:create:dolomite>,
	<item:create:limestone>,
	<item:create:weathered_limestone>,
	<item:create:scoria>,
	<item:create:limesand>
] as IItemStack[];

for item in worldStoneArray{
	worldStone.add(item);
	<quark:stone_tool_materials>.add(item);
}

//make basestones craftable into cobble with slight loss
craftingTable.addShaped("cobbledcobble", <item:minecraft:cobblestone> * 8, [
	[worldStone, worldStone, worldStone],
	[worldStone, worldStone, worldStone],
	[worldStone, worldStone, worldStone]
]);
