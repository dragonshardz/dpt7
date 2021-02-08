//global vars
var milk = <tag:items:forge:milk>;
var water = <tag:items:forge:water>;
var flour = <tag:items:forge:flour>;
var rawmeats = <tag:items:forge:rawmeats>;
var veggies = <tag:items:forge:vegetables>;
var bowl = <item:minecraft:bowl>;
var jellies = <tag:items:forge:jellies>;

//tea vars
var cbeans = <item:minecraft:cocoa_beans>;
var gcocoa = <item:pamhc2foodcore:cocoapowderitem>;
var sugar = <item:minecraft:sugar>;
var pamcream = <item:pamhc2foodcore:creamitem>;
var stcup = <item:simplytea:cup>;
var frothmilk = <item:simplytea:teapot_frothed>;
var blackteabag = <item:simplytea:teabag_black>;
var greenteabag = <item:simplytea:teabag_green>;
var floralteabag = <item:simplytea:teabag_floral>;
var teastick = <item:simplytea:tea_stick>;
var chorusteabag = <item:simplytea:teabag_chorus>;

//teacup outputs
var cupblack = <item:simplytea:cup_tea_black>;
var cupgreen = <item:simplytea:cup_tea_green>;
var cupfloral = <item:simplytea:cup_tea_floral>;
var cupchai = <item:simplytea:cup_tea_chai>;
var cupchorus = <item:simplytea:cup_tea_chorus>;
var stcocoa = <item:simplytea:cup_cocoa>;

//recipe removal
val removeFoodArray = [
	"pamhc2foodcore:hotchocolateitem",
	"simplytea:cup_cocoa"
] as string[];

for str in removeFoodArray{
    craftingTable.removeByName(str);
}

//tag additions
flour.add(<item:create:wheat_flour>);
jellies.add(<item:upgrade_aquatic:mulberry_jam_bottle>);

//new recipes
craftingTable.addShapeless("stcocoatopams", stcocoa, [stcup,frothmilk,gcocoa,sugar], null);
craftingTable.addShapeless("pamcocoa", <item:pamhc2foodcore:hotchocolateitem>, [stcocoa,<item:pamhc2foodcore:marshmellowsitem>], null);

//farmer's delight and simply tea
<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotcocoa",
{
    ingredients: [
        pamcream,
		gcocoa,
		sugar
    ],
    result: {
        item: stcocoa.registryName,
        count: 6
    },
    cookingtime: 200,
    container: {
        item: stcup.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotblacktea",
{
    ingredients: [
        water,
        blackteabag
    ],
    result: {
        item: cupblack.registryName,
        count: 6
    },
    cookingtime: 200,
    container: {
        item: stcup.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotgreentea",
{
    ingredients: [
        water,
        greenteabag
    ],
    result: {
        item: cupgreen.registryName,
        count: 6
    },
    cookingtime: 200,
    container: {
        item: stcup.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotfloraltea",
{
    ingredients: [
        water,
        floralteabag
    ],
    result: {
        item: cupfloral.registryName,
        count: 6
    },
    cookingtime: 200,
    container: {
        item: stcup.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotchorustea",
{
    ingredients: [
        water,
        chorusteabag
    ],
    result: {
        item: cupchorus.registryName,
        count: 6
    },
    cookingtime: 200,
    container: {
        item: stcup.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotchaitea",
{
    ingredients: [
        milk,
        blackteabag,
		teastick
    ],
    result: {
        item: cupchai.registryName,
        count: 6
    },
    cookingtime: 200,
    container: {
        item: stcup.registryName
    },
});

//pam vars
var pamdough = <item:pamhc2foodcore:doughitem>;
var createdough = <item:create:dough>;
var pamsalt = <item:pamhc2foodcore:saltitem>;
var pamstew = <item:pamhc2foodcore:stewitem>;
var punkinslice = <item:farmersdelight:pumpkin_slice>;
var pumpkinbroth = <item:pamhc2foodcore:pumpkinsoupitem>;
var stock = <item:pamhc2foodcore:stockitem>;
var potato = <item:minecraft:potato>;
var cookoil = <item:pamhc2foodcore:cookingoilitem>;
var fries = <item:pamhc2foodcore:friesitem>;
var tatersoup = <item:pamhc2foodcore:potatosoupitem>;
var groundchook = <item:pamhc2foodcore:groundchickenitem>;
var nugcikan = <item:pamhc2foodcore:chickennuggetitem>;
var batter = <item:pamhc2foodcore:batteritem>;
var donut = <item:pamhc2foodcore:donutitem>;
var cdonut = <item:pamhc2foodcore:chocolatedonutitem>;
var jdonut = <item:pamhc2foodcore:jellydonutitem>;
var vinegar = <item:pamhc2foodcore:vinegaritem>;
var pickledbeet = <item:pamhc2foodcore:pickledbeetsitem>;
var beet = <item:minecraft:beetroot>;
var carrot = <item:minecraft:carrot>;
var carrotsoup = <item:pamhc2foodcore:carrotsoupitem>;

//conversions
craftingTable.addShapeless("PamDoughFromCreate", pamdough, [createdough], null);
craftingTable.addShapeless("CreateDoughFromPam", createdough, [pamdough], null);

//pam's pot stuff
<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotsalt",
{
    ingredients: [
        water,
		water,
    ],
    result: {
        item: pamsalt.registryName,
		count: 2
    },
    cookingtime: 200,
	
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotstew",
{
    ingredients: [
        rawmeats,
        veggies,
		veggies,
		flour
    ],
    result: {
        item: pamstew.registryName,
        count: 2
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotpumpkinbroth",
{
    ingredients: [
        punkinslice,
        stock
    ],
    result: {
        item: pumpkinbroth.registryName,
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotfries",
{
    ingredients: [
        potato,
        cookoil,
		pamsalt
    ],
    result: {
        item: fries.registryName,
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpottatersoup",
{
    ingredients: [
        potato,
        stock
    ],
    result: {
        item: tatersoup.registryName,
    },
    cookingtime: 200,
	    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotcikannugz",
{
    ingredients: [
        groundchook,
        flour
    ],
    result: {
        item: nugcikan.registryName,
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotdonut",
{
    ingredients: [
        cookoil,
        batter
    ],
    result: {
        item: donut.registryName,
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotchocodonut",
{
    ingredients: [
        cookoil,
        batter,
		gcocoa
    ],
    result: {
        item: cdonut.registryName,
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotjellydonut",
{
    ingredients: [
        cookoil,
        batter,
		jellies
    ],
    result: {
        item: jdonut.registryName,
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotpickledbeets",
{
    ingredients: [
        beet,
        vinegar
    ],
    result: {
        item: pickledbeet.registryName,
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotcarrotsoup",
{
    ingredients: [
        carrot,
        stock
    ],
    result: {
        item: carrotsoup.registryName,
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});