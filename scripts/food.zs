import crafttweaker.api.item.IItemStack;

//global vars
var milk = <tag:items:forge:milk>;
var water = <tag:items:forge:water>;
var flour = <tag:items:forge:flour>;
var rawmeats = <tag:items:forge:rawmeats>;
var veggies = <tag:items:forge:vegetables>;
var bowl = <item:minecraft:bowl>;
var bottle = <item:minecraft:glass_bottle>;
var jellies = <tag:items:forge:jellies>;
var noodlz = <tag:items:forge:pasta>;
var rawchook = <tag:items:forge:raw_chicken>;
var rawfeesh = <tag:items:forge:rawfish>;
var vingarmats = <tag:items:forge:vinegar_ingredients>;
var stockmats = <tag:items:forge:stock_ingredients>;
var honeybottle = <item:minecraft:honey_bottle>;
var honeyblock = <item:minecraft:honey_block>;
var yucca = <item:atmospheric:yucca_fruit>;
var yuccajuice = <item:atmospheric:yucca_juice>;
var aloe = <item:atmospheric:aloe_leaves>;
var aloegel = <item:atmospheric:aloe_gel_bottle>;
var syrup = <item:autumnity:syrup_bottle>;
var sap = <item:autumnity:sap_bottle>;

//misc vars
var mulberry = <item:upgrade_aquatic:mulberry>;
var mulberryjam = <item:upgrade_aquatic:mulberry_jam_bottle>;

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
jellies.add(mulberryjam);
vingarmats.add(mulberry,<item:atmospheric:passionfruit>);

val rawMeatsArray = [
	<item:autumnity:turkey>,
	<item:autumnity:turkey_piece>
] as IItemStack[];

for item in rawMeatsArray{
	rawmeats.add(item);
	stockmats.add(item);
}

val rawFishesArray = [
	<item:aquaculture:atlantic_cod>,
	<item:aquaculture:blackfish>,
	<item:aquaculture:pacific_halibut>,
	<item:aquaculture:atlantic_halibut>,
	<item:aquaculture:atlantic_herring>,
	<item:aquaculture:pink_salmon>,
	<item:aquaculture:pollock>,
	<item:aquaculture:rainbow_trout>,
	<item:aquaculture:bayad>,
	<item:aquaculture:boulti>,
	<item:aquaculture:capitaine>,
	<item:aquaculture:synodontis>,
	<item:aquaculture:smallmouth_bass>,
	<item:aquaculture:bluegill>,
	<item:aquaculture:brown_trout>,
	<item:aquaculture:carp>,
	<item:aquaculture:catfish>,
	<item:aquaculture:gar>,
	<item:aquaculture:minnow>,
	<item:aquaculture:muskellunge>,
	<item:aquaculture:perch>,
	<item:aquaculture:arapaima>,
	<item:aquaculture:piranha>,
	<item:aquaculture:tambaqui>,
	<item:aquaculture:brown_shrooma>,
	<item:aquaculture:red_shrooma>,
	<item:aquaculture:red_grouper>,
	<item:aquaculture:tuna>,
	<item:aquaculture:goldfish>,
	<item:upgrade_aquatic:pike>,
	<item:upgrade_aquatic:lionfish>
] as IItemStack[];

for item in rawFishesArray{
	rawfeesh.add(item);
	stockmats.add(item);
}

val honeyArray = [
	<item:buzzier_bees:sticky_honey_wand>,
	<item:create:honey_bucket>
] as IItemStack[];

for item in honeyArray{
    <tag:items:crafttweaker:edible_honey>.add(item);
}

//new recipes
craftingTable.addShapeless("stcocoatopams", stcocoa, [stcup,frothmilk,gcocoa,sugar], null);
craftingTable.addShapeless("pamcocoa", <item:pamhc2foodcore:hotchocolateitem>, [stcocoa,<item:pamhc2foodcore:marshmellowsitem>], null);

//farmer's delight and simply tea
<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotsyrup",
{
    ingredients: [
        sap
    ],
    result: {
        item: syrup.registryName,
        count: 1
    },
    cookingtime: 100,
    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotaloegel",
{
    ingredients: [
        aloe,
	aloe,
	aloe,
	aloe,
	aloe,
	aloe,
    ],
    result: {
        item: aloegel.registryName,
        count: 1
    },
    cookingtime: 100,
    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotyuccajuice",
{
    ingredients: [
        yucca,
	yucca,
	yucca,
	sugar
    ],
    result: {
        item: yuccajuice.registryName,
        count: 1
    },
    cookingtime: 100,
    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpothoneybottles",
{
    ingredients: [
        honeyblock,
    ],
    result: {
        item: honeybottle.registryName,
        count: 4
    },
    cookingtime: 100,
    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpothoneybottle",
{
    ingredients: [
        <tag:items:crafttweaker:edible_honey>,
    ],
    result: {
        item: honeybottle.registryName,
        count: 1
    },
    cookingtime: 50,
    container: {
        item: bottle.registryName
    },
});

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

//pam outputs
var pamsalt = <item:pamhc2foodcore:saltitem>;
var pamstew = <item:pamhc2foodcore:stewitem>;
var pumpkinbroth = <item:pamhc2foodcore:pumpkinsoupitem>;
var fries = <item:pamhc2foodcore:friesitem>;
var tatersoup = <item:pamhc2foodcore:potatosoupitem>;
var nugcikan = <item:pamhc2foodcore:chickennuggetitem>;
var donut = <item:pamhc2foodcore:donutitem>;
var cdonut = <item:pamhc2foodcore:chocolatedonutitem>;
var jdonut = <item:pamhc2foodcore:jellydonutitem>;
var pickledbeet = <item:pamhc2foodcore:pickledbeetsitem>;
var carrotsoup = <item:pamhc2foodcore:carrotsoupitem>;
var noodlsoup = <item:pamhc2foodcore:noodlesoupitem>;
var macncheez = <item:pamhc2foodcore:macncheeseitem>;
var friedcikan = <item:pamhc2foodcore:friedchickenitem>;
var butter = <item:pamhc2foodcore:butteritem>;
var potroast = <item:pamhc2foodcore:potroastitem>;
var fishnchips = <item:pamhc2foodcore:fishandchipsitem>;
var cheez = <item:pamhc2foodcore:cheeseitem>;
var vinegar = <item:pamhc2foodcore:vinegaritem>;
var boiledegg = <item:pamhc2foodcore:boiledeggitem>;
var mashtaters = <item:pamhc2foodcore:mashedpotatoesitem>;
var applejelly = <item:pamhc2foodcore:applejellyitem>;
var melonjelly = <item:pamhc2foodcore:melonjellyitem>;
var berryjelly = <item:pamhc2foodcore:sweetberryjellyitem>;
var stock = <item:pamhc2foodcore:stockitem>;
var cottoncandy = <item:pamhc2foodcore:cottoncandyitem>;

//pam inputs
var pamdough = <item:pamhc2foodcore:doughitem>;
var createdough = <item:create:dough>;
var punkinslice = <item:farmersdelight:pumpkin_slice>;
var potato = <item:minecraft:potato>;
var cookoil = <item:pamhc2foodcore:cookingoilitem>;
var groundchook = <item:pamhc2foodcore:groundchickenitem>;
var batter = <item:pamhc2foodcore:batteritem>;
var beet = <item:minecraft:beetroot>;
var carrot = <item:minecraft:carrot>;
var rawbeef = <item:minecraft:beef>;
var egg = <item:minecraft:egg>;
var baketate = <item:minecraft:baked_potato>;
var applejuice = <item:pamhc2foodcore:applejuiceitem>;
var melonjuice = <item:pamhc2foodcore:melonjuiceitem>;
var berryjuice = <item:pamhc2foodcore:sweetberryjuiceitem>;


//conversions
craftingTable.addShapeless("pamdoughfromcreate", pamdough, [createdough], null);
craftingTable.addShapeless("createdoughfrompam", createdough, [pamdough], null);

//pam's pot stuff
<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotsalt",
{
    ingredients: [
        water,
		water
    ],
    result: {
        item: pamsalt.registryName,
		count: 4
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
		count: 2
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
		count: 2
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
		count: 2
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
		count: 2
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
		count: 2
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
		count: 2
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
		count: 2
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
		count: 2
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
		count: 2
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotnoodlesoup",
{
    ingredients: [
        noodlz,
        stock
    ],
    result: {
        item: carrotsoup.registryName,
		count: 2
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotmacncheez",
{
    ingredients: [
        noodlz,
        cheez
    ],
    result: {
        item: macncheez.registryName,
		count: 2
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotfriedcikan",
{
    ingredients: [
        flour,
        rawchook,
		cookoil
    ],
    result: {
        item: friedcikan.registryName,
		count: 2
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotbutter",
{
    ingredients: [
        milk
    ],
    result: {
        item: butter.registryName,
		count: 2
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotroast",
{
    ingredients: [
        rawbeef,
        potato,
		carrot
    ],
    result: {
        item: potroast.registryName,
		count: 2
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotfishnchips",
{
    ingredients: [
        rawfeesh,
        flour,
		fries
    ],
    result: {
        item: fishnchips.registryName,
		count: 2
    },
    cookingtime: 200,
    container: {
        item: <item:ceramics:clay_plate>.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotbutter",
{
    ingredients: [
        milk,
        pamsalt
    ],
    result: {
        item: butter.registryName,
		count: 2
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotvinegar",
{
    ingredients: [
        vingarmats
    ],
    result: {
        item: vinegar.registryName,
		count: 2
    },
    cookingtime: 200,
    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotcheese",
{
    ingredients: [
        milk,
		pamsalt
    ],
    result: {
        item: cheez.registryName,
		count: 2
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotstock",
{
    ingredients: [
        stockmats
    ],
    result: {
        item: stock.registryName,
		count: 4
    },
    cookingtime: 200,
    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotboiledegg",
{
    ingredients: [
        egg
    ],
    result: {
        item: boiledegg.registryName,
		count: 1
    },
    cookingtime: 200,
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotsmeeshtates",
{
    ingredients: [
        baketate,
		butter,
		pamsalt
    ],
    result: {
        item: mashtaters.registryName,
		count: 2
    },
    cookingtime: 200,
	    container: {
        item: bowl.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotapplejelly",
{
    ingredients: [
        applejuice,
		sugar
    ],
    result: {
        item: applejelly.registryName,
		count: 2
    },
    cookingtime: 200,
	    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotmelonjelly",
{
    ingredients: [
        melonjuice,
		sugar
    ],
    result: {
        item: melonjelly.registryName,
		count: 2
    },
    cookingtime: 200,
	    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotberryjelly",
{
    ingredients: [
        berryjuice,
		sugar
    ],
    result: {
        item: berryjelly.registryName,
		count: 2
    },
    cookingtime: 200,
	    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotmulberryjam",
{
    ingredients: [
        mulberry,
		sugar
    ],
    result: {
        item: mulberryjam.registryName,
		count: 2
    },
    cookingtime: 200,
	    container: {
        item: bottle.registryName
    },
});

<recipetype:farmersdelight:cooking>.addJSONRecipe("fdpotcottoncandy",
{
    ingredients: [
		sugar
    ],
    result: {
        item: cottoncandy.registryName,
		count: 2
    },
});
