var cbeans = <item:minecraft:cocoa_beans>;
var gcocoa = <item:pamhc2foodcore:cocoapowderitem>;
var sugar = <item:minecraft:sugar>;
var pamcream = <item:pamhc2foodcore:creamitem>;
var stcocoa = <item:simplytea:cup_cocoa>;
var stcup = <item:simplytea:cup>;
var shaft = <item:create:shaft>;
var lbelt = <item:create:belt_connector>;
var iebelt = <item:immersiveengineering:conveyor_basic>;

craftingTable.removeByName("simplytea:cup_cocoa");
craftingTable.removeByName("immersiveengineering:crafting/conveyor_basic");
craftingTable.removeByName("pamhc2foodcore:hotchocolateitem");
craftingTable.addShapeless("stcocoatopams", stcocoa * 2, [stcup,pamcream,gcocoa,sugar], null);
craftingTable.addShaped("newiebelts", iebelt * 4, [[shaft,lbelt,shaft]]);

<recipetype:farmersdelight:cooking>.addJSONRecipe("test_recipes",
{
    ingredients: [
        {
            item: pamcream.registryName
        },
        {
            item: gcocoa.registryName
        },
        {
            item: sugar.registryName
        }
    ],
    result: {
        item: stcocoa.registryName,
        count: 3
    },
    cookingtime: 200,
    container: {
        item: <item:simplytea:cup>.registryName
    },
});