import crafttweaker.api.item.IItemStack;

//vars
var worldStone = <tag:items:crafttweaker:worldstone>;

//sets what we want to make craftable into cobble and adds to the tag
val worldStoneArray = [
	<item:minecraft:diorite>,
	<item:minecraft:andesite>,
	<item:minecraft:granite>,
	<item:create:dolomite>
] as IItemStack[];

for item in worldStoneArray{
	worldStone.add(item);
}

//make basestones craftable into cobble with slight loss
craftingTable.addShaped("cobbledcobble", <item:minecraft:cobblestone> * 8, [
	[worldStone, worldStone, worldStone],
	[worldStone, worldStone, worldStone],
	[worldStone, worldStone, worldStone]
]);