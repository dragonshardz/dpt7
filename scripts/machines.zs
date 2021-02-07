var shaft = <item:create:shaft>;
var lbelt = <item:create:belt_connector>;
var iebelt = <item:immersiveengineering:conveyor_basic>;

craftingTable.removeByName("immersiveengineering:crafting/conveyor_basic");
craftingTable.addShaped("newiebelts", iebelt * 4, [[shaft,lbelt,shaft]]);