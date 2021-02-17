



//
// Vanilla
//

// {boats, Book and Quill} stacksizes to 8
import crafttweaker.item.IItemStack;
val to8 = [<minecraft:boat>, <minecraft:spruce_boat>, <minecraft:birch_boat>, <minecraft:jungle_boat>, <minecraft:acacia_boat>, <minecraft:dark_oak_boat>, <minecraft:writable_book>] as IItemStack[];
for item in to8 item.maxStackSize = 8;

// add shulkers to oreDict
val shulkerEntries = <ore:shulkerBox>;
shulkerEntries.addItems([
		<minecraft:white_shulker_box>,
		<minecraft:orange_shulker_box>,
		<minecraft:magenta_shulker_box>,
		<minecraft:light_blue_shulker_box>,
		<minecraft:yellow_shulker_box>,
		<minecraft:lime_shulker_box>,
		<minecraft:pink_shulker_box>,
		<minecraft:gray_shulker_box>,
		<minecraft:silver_shulker_box>,
		<minecraft:cyan_shulker_box>,
		<minecraft:purple_shulker_box>,
		<minecraft:blue_shulker_box>,
		<minecraft:brown_shulker_box>,
		<minecraft:green_shulker_box>,
		<minecraft:red_shulker_box>,
		<minecraft:black_shulker_box>
	]
);

// rabbit hide from leather
recipes.addShaped(
	"minecraft-rabbit_hide",
	<minecraft:rabbit_hide> * 4, [
		[<minecraft:leather>]
	]
);

// synthetic feather
recipes.addShaped(
	"minecraft-synthetic_feather",
	<minecraft:feather> * 2, [
		[<ore:fiberHemp>, <ore:string>, <ore:fiberHemp>],
		[<ore:string>, <ore:itemCarbonFibre> | <ore:itemCarbonFiber>, <ore:string>],
		[<ore:fiberHemp>, <ore:itemCarbonFibre> | <ore:itemCarbonFiber>, <ore:fiberHemp>]
	]
);




//
// Future MC
//

// recipe for soul Torch
recipes.addShaped(
	"futuremc-soul_fire_torch",
	<futuremc:soul_fire_torch> * 4, [
		[<minecraft:coal> | <minecraft:coal:1>],
		[<ore:stickWood>],
		[<futuremc:soul_soil>]
	]
);
recipes.addShapeless(
	"futuremc-soul_fire_torch_shapeless",
	<futuremc:soul_fire_torch> * 4, [
		<futuremc:soul_soil>,
		<ore:torch>,
		<ore:torch>,
		<ore:torch>,
		<ore:torch>
	]
);

// recipe for Soul Lantern
recipes.addShaped(
	"futuremc-soul_lantern",
	<futuremc:soul_fire_lantern>, [
		[<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>],
		[<minecraft:iron_nugget>, <futuremc:soul_fire_torch>, <minecraft:iron_nugget>],
		[<minecraft:iron_nugget>, <minecraft:iron_nugget>, <minecraft:iron_nugget>]
	]
);

// recipe for Bamboo
recipes.addShapeless(
	"futuremc-bamboo",
	<futuremc:bamboo>, [
		<ore:sugarcane>,
		<minecraft:sapling:3>
	]
);

// recipe for soul soil
recipes.addShaped(
	"futuremc-soul_soil",
	<futuremc:soul_soil> * 9, [
		[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>],
		[<minecraft:soul_sand>, <ore:dustSoularium>, <minecraft:soul_sand>],
		[<minecraft:soul_sand>, <minecraft:soul_sand>, <minecraft:soul_sand>]
	]
);

// recipe for Honeycomb Block and Honey Block
recipes.addShaped(
	"futuremc-honeycomb_block",
	<futuremc:honeycomb_block>, [
		[<forestry:bee_combs>, <forestry:bee_combs>],
		[<forestry:bee_combs>, <forestry:bee_combs>]
	]
);
recipes.addShaped(
	"futuremc-honey_block",
	<futuremc:honey_block>, [
		[<forestry:honey_pot>, <forestry:honey_pot>],
		[<forestry:honey_pot>, <forestry:honey_pot>]
	]
);




//
// OpenBlocks
//

// harder recipe for Luggage
recipes.removeByRecipeName("openblocks:luggage_0");
recipes.addShaped(
	"openblocks-luggage_0",
	<openblocks:luggage>.withTag({}), [
		[<ore:stickWood>, <ore:gemDiamond>, <ore:stickWood>],
		[<ore:stickWood>, <immersiveengineering:wooden_device0>, <ore:stickWood>],
		[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]
	]
);

// remove some items
mods.jei.JEI.removeAndHide(<openblocks:generic:10>);
mods.jei.JEI.removeAndHide(<openblocks:generic:11>);

// Sponge
recipes.removeByRegex("openblocks:sponge_[0-9]*");
recipes.addShaped(
	"openblocks-sponge",
	<openblocks:sponge>, [
		[<ore:slimeball>, <minecraft:sponge>, <ore:slimeball>],
		[<minecraft:sponge>, <minecraft:magma>, <minecraft:sponge>],
		[<ore:slimeball>, <minecraft:sponge>, <ore:slimeball>]
	]
);

// Hang glider
recipes.removeByRecipeName("openblocks:hang_glider_0");
recipes.removeByRecipeName("openblocks:glider_wing_0");
recipes.removeByRecipeName("openblocks:glider_wing_1");
recipes.addShaped(
	"openblocks-hang_glider",
	<openblocks:hang_glider>, [
		[<ore:nuggetIron>, <ore:stickWood>, <ore:nuggetIron>],
		[<openblocks:generic:0>, <ore:nuggetIron>, <openblocks:generic:0>]
	]
);
recipes.addShapedMirrored(
	"openblocks-glider_wing_0",
	<openblocks:generic>, [
		[<minecraft:leather>, <ore:nuggetIron>, null],
		[<minecraft:leather>, <minecraft:leather>, <ore:stickWood>],
		[<minecraft:leather>, <minecraft:leather>, <minecraft:leather>]
	]
);
recipes.addShapedMirrored(
	"openblocks-glider_wing_1",
	<openblocks:generic>, [
		[<ore:fabricHemp>, <ore:nuggetIron>, null],
		[<ore:fabricHemp>, <ore:fabricHemp>, <ore:stickWood>],
		[<ore:fabricHemp>, <ore:fabricHemp>, <ore:fabricHemp>]
	]
);




//
// Extra Utilities 2
//

// harder recipe for Bag Of Holding
recipes.removeByRecipeName("extrautils2:bag_of_holding");
recipes.addShaped(
	"extrautils2-bag_of_holding",
	<extrautils2:bagofholding>.withTag({}), [
		[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
		[<ore:shulkerBox>, <extrautils2:decorativesolidwood:1>, <ore:shulkerBox>],
		[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
	]
);

// harder recipe for Trowel
recipes.removeByRecipeName("extrautils2:trowel");
recipes.addShaped(
	"extrautils2-trowel",
	<extrautils2:trowel>, [
		[null, <ore:slimeball>, <ore:ingotIron>],
		[null, <minecraft:stone_button:*>, <ore:slimeball>],
		[<ore:stickWood>, null, null]
	]
);

// remove rainbow block
mods.jei.JEI.removeAndHide(<extrautils2:decorativesolid:8>);

// Drums
recipes.removeByRecipeName("extrautils2:drum_256");
recipes.removeByRecipeName("extrautils2:drum_clear_256");
recipes.addShapeless("extrautils2-drum_clear_256", <extrautils2:drum:1>, [<extrautils2:drum:1>]);
recipes.addShaped(
	"extrautils2-drum_256",
	<extrautils2:drum:1>, [
		[<ore:ingotIron>, <minecraft:heavy_weighted_pressure_plate:*>, <ore:ingotIron>],
		[<ore:ingotIron>, <extrautils2:drum:0>.marked("mark"), <ore:ingotIron>],
		[<ore:ingotIron>, <minecraft:heavy_weighted_pressure_plate:*>, <ore:ingotIron>]
	],
	function(out, ins, cInfo){
		return out.withTag(ins.mark.tag);
	},
	null
);
recipes.removeByRecipeName("extrautils2:drum_65536");
recipes.removeByRecipeName("extrautils2:drum_clear_65536");
recipes.addShapeless("extrautils2-drum_clear_65536", <extrautils2:drum:3>, [<extrautils2:drum:3>]);
recipes.addShaped(
	"extrautils2-drum_65536",
	<extrautils2:drum:3>, [
		[<extrautils2:simpledecorative:1>, <extrautils2:klein>, <extrautils2:simpledecorative:1>],
		[<extrautils2:compressedcobblestone:7>, <extrautils2:drum:2>.marked("mark"), <extrautils2:compressedcobblestone:7>],
		[<extrautils2:simpledecorative:1>, <extrautils2:klein>, <extrautils2:simpledecorative:1>]
	],
	function(out, ins, cInfo){
		return out.withTag(ins.mark.tag);
	},
	null
);

// harder recipe for Deep Dark Portal
recipes.removeByRecipeName("extrautils2:teleporter");
recipes.addShaped(
	"extrautils2-teleporter",
	<extrautils2:teleporter:1>, [
		[<ore:compressed4xCobblestone>, <ore:ingotUnstable>, <ore:compressed4xCobblestone>],
		[<ore:ingotUnstable>, <ore:compressed5xCobblestone>, <ore:ingotUnstable>],
		[<ore:compressed4xCobblestone>, <ore:ingotUnstable>, <ore:compressed4xCobblestone>]
	]
);

// different recipes for Opinium Cores
// TODO textures are wrong because of this change :/
recipes.removeByRecipeName("extrautils2:opinium_4");
recipes.removeByRecipeName("extrautils2:opinium_5");
recipes.removeByRecipeName("extrautils2:opinium_6");
recipes.removeByRecipeName("extrautils2:opinium_7");
recipes.addShaped(
	"extrautils2-opinium_4",
	<extrautils2:opinium:4>, [
		[null, <extrautils2:opinium:3>, null],
		[<minecraft:emerald_block>, <ore:obsidian>, <minecraft:emerald_block>],
		[null, <extrautils2:opinium:3>, null]
	]
);
recipes.addShaped(
	"extrautils2-opinium_5",
	<extrautils2:opinium:5>, [
		[null, <extrautils2:opinium:4>, null],
		[<ore:obsidian>, <minecraft:experience_bottle>, <ore:obsidian>],
		[null, <extrautils2:opinium:4>, null]
	]
);
recipes.addShaped(
	"extrautils2-opinium_6",
	<extrautils2:opinium:6>, [
		[null, <extrautils2:opinium:5>, null],
		[<minecraft:experience_bottle>, <minecraft:chorus_flower>, <minecraft:experience_bottle>],
		[null, <extrautils2:opinium:5>, null]
	]
);
recipes.addShaped(
	"extrautils2-opinium_7",
	<extrautils2:opinium:7>, [
		[null, <extrautils2:opinium:6>, null],
		[<minecraft:chorus_flower>, <minecraft:nether_star>, <minecraft:chorus_flower>],
		[null, <extrautils2:opinium:6>, null]
	]
);

// harder recipe for Quarry
recipes.removeByRecipeName("extrautils2:quarry_proxy");
recipes.removeByRecipeName("extrautils2:quarry_base");
recipes.addShaped(
	"extrautils2-quarry_proxy",
	<extrautils2:quarryproxy>, [
		[<ore:ingotSteel>, <minecraft:end_rod>, <ore:ingotBronze>],
		[<ore:enderpearl>, <ic2:nuclear:3>, <ore:endstone>],
		[<ore:ingotStellarAlloy>, <ore:circuitAdvanced>, <ore:ingotDraconium>]
	]
);
recipes.addShaped(
	"extrautils2-quarry_base",
	<extrautils2:quarry>, [
		[<enderio:item_capacitor_stellar>, <immersiveengineering:metal_device1:7>, <extrautils2:opinium:8>],
		[<actuallyadditions:item_drill:*>, <ore:magic_snow_globe>, <enderio:item_stellar_alloy_pickaxe>],
		[<ore:compressed8xCobblestone>, <chickenchunks:chunk_loader>, <ic2:te:39>]
	]
);

// harder recipes for flying rings
recipes.removeByRecipeName("extrautils2:chicken_ring");
recipes.removeByRecipeName("extrautils2:squid_ring");
recipes.removeByRecipeName("extrautils2:angel_ring_0");
recipes.removeByRecipeName("extrautils2:angel_ring_1");
recipes.removeByRecipeName("extrautils2:angel_ring_2");
recipes.removeByRecipeName("extrautils2:angel_ring_3");
recipes.removeByRecipeName("extrautils2:angel_ring_4");
recipes.removeByRecipeName("extrautils2:angel_ring_5");
recipes.addShaped(
	"extrautils2-chicken_ring",
	<extrautils2:chickenring>, [
		[<ore:feather>, <ore:ingotIron>, <ore:feather>],
		[<ore:fabricHemp>, <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:chicken"}}), <ore:fabricHemp>],
		[<ore:gemRedstone>, <ore:wool>, <ore:gemRedstone>]
	]
);
recipes.addShaped(
	"extrautils2-squid_ring",
	<extrautils2:chickenring:1>, [
		[<ore:ingotSilver>, <minecraft:end_crystal>, <ore:ingotSilver>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:squid"}}), <extrautils2:chickenring>, <minecraft:ender_pearl:*>],
		[<actuallyadditions:block_crystal_empowered:4>, <ic2:jetpack_electric:*>, <actuallyadditions:block_crystal_empowered:4>]
	]
);
recipes.addShaped(
	"extrautils2-angel_ring_0",
	<extrautils2:angelring:0>, [
		[<ore:blockGlass>, <draconicevolution:draconic_core>, <ore:blockGlass>],
		[<ore:ingotCrystallineAlloy>, <extrautils2:chickenring:1>, <ore:ingotCrystallineAlloy>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <actuallyadditions:item_wings_of_the_bats>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]
	]
);
recipes.addShaped(
	"extrautils2-angel_ring_1",
	<extrautils2:angelring:1>, [
		[<minecraft:feather:*>, <draconicevolution:draconic_core>, <minecraft:feather:*>],
		[<ore:ingotCrystallineAlloy>, <extrautils2:chickenring:1>, <ore:ingotCrystallineAlloy>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <actuallyadditions:item_wings_of_the_bats>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]
	]
);
recipes.addShaped(
	"extrautils2-angel_ring_2",
	<extrautils2:angelring:2>, [
		[<ore:dyePurple>, <draconicevolution:draconic_core>, <ore:dyePink>],
		[<ore:ingotCrystallineAlloy>, <extrautils2:chickenring:1>, <ore:ingotCrystallineAlloy>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <actuallyadditions:item_wings_of_the_bats>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]
	]
);
recipes.addShaped(
	"extrautils2-angel_ring_3",
	<extrautils2:angelring:3>, [
		[<minecraft:leather:*>, <draconicevolution:draconic_core>, <minecraft:leather:*>],
		[<ore:ingotCrystallineAlloy>, <extrautils2:chickenring:1>, <ore:ingotCrystallineAlloy>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <actuallyadditions:item_wings_of_the_bats>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]
	]
);
recipes.addShaped(
	"extrautils2-angel_ring_4",
	<extrautils2:angelring:4>, [
		[<ore:nuggetGold>, <draconicevolution:draconic_core>, <ore:nuggetGold>],
		[<ore:ingotCrystallineAlloy>, <extrautils2:chickenring:1>, <ore:ingotCrystallineAlloy>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <actuallyadditions:item_wings_of_the_bats>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]
	]
);
recipes.addShaped(
	"extrautils2-angel_ring_5",
	<extrautils2:angelring:5>, [
		[<minecraft:coal>, <draconicevolution:draconic_core>, <minecraft:coal:1>],
		[<ore:ingotCrystallineAlloy>, <extrautils2:chickenring:1>, <ore:ingotCrystallineAlloy>],
		[<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}}), <actuallyadditions:item_wings_of_the_bats>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}})]
	]
);

// cheaper recipe for Compound Bow and Fire Axe
recipes.removeByRecipeName("extrautils2:fire_axe");
recipes.removeByRecipeName("extrautils2:compound_bow");
recipes.addShaped(
	"extrautils2-fire_axe",
	<extrautils2:fireaxe>, [
		[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>],
		[<ore:ingotStellarAlloy>, <extrautils2:opinium:8>],
		[null, <minecraft:stick:*>]
	]
);
recipes.addShaped(
	"extrautils2-compound_bow",
	<extrautils2:compoundbow>, [
		[null, <ore:ingotStellarAlloy>, <ore:string>],
		[<ore:ingotStellarAlloy>, <extrautils2:opinium:8>, <ore:string>],
		[null, <ore:ingotStellarAlloy>, <ore:string>]
	]
);

// creative wands
recipes.addShaped(
	"extrautils2-creative_builders_wand",
	<extrautils2:itemcreativebuilderswand>, [
		[null, <ore:ingotEvilMetal>, null],
		[null, <extrautils2:itembuilderswand>, <ore:ingotEvilMetal>],
		[<ore:ingotEnchantedMetal>, null, null]
	]
);
recipes.addShaped(
	"extrautils2-creative_destruction_wand",
	<extrautils2:itemcreativedestructionwand>, [
		[null, <ore:ingotEvilMetal>, null],
		[null, <extrautils2:itemdestructionwand>, <ore:ingotEvilMetal>],
		[<ore:ingotEnchantedMetal>, null, null]
	]
);

// alternative recipe for Magical Wood
recipes.addShaped(
	"extrautils2-magic_wood_2",
	<extrautils2:decorativesolidwood:1> * 5, [
		[<ore:bookshelf>, <ore:ingotEnchantedMetal>, <ore:bookshelf>],
		[<ore:ingotEnchantedMetal>, <ore:bookshelf>, <ore:ingotEnchantedMetal>],
		[<ore:bookshelf>, <ore:ingotEnchantedMetal>, <ore:bookshelf>]
	]
);

// recipes for Enchanted Metal
recipes.addShapeless(
	"extrautils2-enchanted_metal_ingot",
	<extrautils2:ingredients:12>, [
		<ore:ingotGold>,
		<ore:gemLapis>
	]
);
recipes.addShapeless(
	"extrautils2-enchanted_metal_block",
	<extrautils2:simpledecorative>, [
		<ore:blockGold>,
		<minecraft:lapis_block>
	]
);

// recipes for Evil Infused Iron
recipes.addShaped(
	"extrautils2-evil_infused_metal_ingot",
	<extrautils2:ingredients:17> * 8, [
		[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
		[<ore:ingotIron>, <ore:netherStar>, <ore:ingotIron>],
		[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
	]
);
recipes.addShaped(
	"extrautils2-evil_infused_metal_block",
	<extrautils2:simpledecorative:2> * 5, [
		[<ore:blockIron>, <ore:netherStar>, <ore:blockIron>],
		[<ore:netherStar>, <ore:blockIron>, <ore:netherStar>],
		[<ore:blockIron>, <ore:netherStar>, <ore:blockIron>]
	]
);

// harder recipe for Player Chest
recipes.removeByRecipeName("extrautils2:player_chest");
recipes.addShaped(
	"extrautils2-player_chest",
	<extrautils2:playerchest>, [
		[<ore:itemEnderCrystal>, <extrautils2:decorativesolid:3>, <ore:itemEnderCrystal>],
		[<actuallyadditions:block_misc:8>, <ore:chestEnder>, <actuallyadditions:block_misc:8>],
		[<ore:ingotVibrantAlloy>, <extrautils2:decorativesolid:3>, <ore:ingotVibrantAlloy>]
	]
);




//
// Actually Additions
//

// custom recipe for giant chest
recipes.removeByRecipeName("actuallyadditions:recipes161");
recipes.addShaped(
	"actuallyadditions-recipes161",
	<actuallyadditions:block_giant_chest>, [
		[<ore:plankWood>, <actuallyadditions:block_misc:4>, <ore:plankWood>],
		[<ore:plankWood>, <ironchest:iron_chest:2>, <ore:plankWood>],
		[<ore:plankWood>, <actuallyadditions:block_misc:4>, <ore:plankWood>]
	]
);

// TODO Crushers and Powered Furnace
//mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder>);
//mods.jei.JEI.removeAndHide(<actuallyadditions:block_grinder_double>);
//mods.jei.JEI.removeAndHide(<actuallyadditions:block_furnace_double>);

// harder recipe for Traveler's Sack
recipes.removeByRecipeName("actuallyadditions:recipes5");
recipes.addShaped(
	"actuallyadditions-recipes5",
	<actuallyadditions:item_bag>, [
		[<minecraft:string>, <minecraft:leather>, <minecraft:string>],
		[<minecraft:string>, <ore:shulkerBox>, <minecraft:string>],
		[<minecraft:leather>, <actuallyadditions:block_crystal:3>, <minecraft:leather>]
	]
);

// harder recipe for Drill
recipes.removeByRecipeName("actuallyadditions:recipes27");
recipes.addShaped(
	"actuallyadditions-recipes27",
	<actuallyadditions:item_drill:3>, [
		[<actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>, <actuallyadditions:item_crystal:2>],
		[<actuallyadditions:block_crystal:5>, <ic2:iridium_drill:*>, <actuallyadditions:block_crystal:5>],
		[<actuallyadditions:item_misc:8>, <actuallyadditions:item_misc:16>, <actuallyadditions:item_misc:8>]
	]
);

// fake quartz
recipes.addShaped(
	"actuallyadditions-fakeQuartz",
	<minecraft:quartz>, [
		[null, <ore:dyeWhite>, null],
		[<ore:dyeWhite>, <ore:gemQuartzBlack>, <ore:dyeWhite>],
		[null, <ore:dyeWhite>, null]
	]
);

// harder recipe for Handheld Filler
recipes.removeByRecipeName("actuallyadditions:recipes4");
recipes.addShaped(
	"actuallyadditions-recipes4",
	<actuallyadditions:item_filling_wand>, [
		[<actuallyadditions:item_crystal_empowered:2>, <ore:gemIridium>, <actuallyadditions:item_crystal_empowered:2>],
		[<ore:ingotStellarAlloy>, <extrautils2:itemcreativebuilderswand>, <ore:ingotStellarAlloy>],
		[null, <actuallyadditions:item_battery_triple>, null]
	]
);




//
// Ender IO
//

// harder recipes for shields
recipes.removeByRecipeName("enderio:dark_steel_shield");
recipes.addShaped(
	"enderio-dark_steel_shield",
	<enderio:item_dark_steel_shield>, [
		[<ore:ingotDarkSteel>, <ore:ingotConstructionAlloy> | <ore:ingotIron>, <ore:ingotDarkSteel>],
		[<ore:ingotDarkSteel>, <immersiveengineering:shield>, <ore:ingotDarkSteel>],
		[null, <ore:ingotDarkSteel>, null]
	]
);
recipes.removeByRecipeName("enderio:end_steel_shield");
recipes.addShaped(
	"enderio-end_steel_shield",
	<enderio:item_end_steel_shield>, [
		[<ore:ingotEndSteel>, <ore:skullGuardianDiode>, <ore:ingotEndSteel>],
		[<ore:ingotEndSteel>, <enderio:item_dark_steel_shield>, <ore:ingotEndSteel>],
		[null, <ore:ingotEndSteel>, null]
	]
);

// recipe for Crystalline Pink Slime Ingot
recipes.addShaped(
	"enderio-crystaline_slime_ingot",
	<enderio:item_alloy_endergy_ingot:4> * 2, [
		[null, <ore:slimeball>, null],
		[<ore:ingotPulsatingIron>, <ore:crystalFluix> | <ore:crystalPureFluix>, <ore:ingotVibrantAlloy>],
		[null, <ore:slimeball>, null]
	]
);

// harder recipe for Reinforced Obsidian
recipes.removeByRecipeName("enderio:reinforced_obsidian");
recipes.addShaped(
	"enderio-reinforced_obsidian",
	<enderio:block_reinforced_obsidian>, [
		[<enderio:block_dark_iron_bars>, <ore:obsidian>, <enderio:block_dark_iron_bars>],
		[<ic2:resource:11>, <ore:dustBedrock>, <ic2:resource:11>],
		[<enderio:block_dark_iron_bars>, <ore:obsidian>, <enderio:block_dark_iron_bars>]
	]
);

// harder recipes Explosive Upgrades
recipes.removeByRecipeName("enderio:dark_steel_upgrade_t_n_t");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_t_n_t_2");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_t_n_t_3");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_t_n_t_4");
recipes.removeByRecipeName("enderio:dark_steel_upgrade_t_n_t_5");
recipes.addShapeless(
	"enderio-dark_steel_upgrade_t_n_t",
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt"}), [
		<ic2:crafting:4>, <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearWood>
	]
);
recipes.addShapeless(
	"enderio-dark_steel_upgrade_t_n_t_2",
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt1"}), [
		<ore:ingotStellarAlloy>, <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearStone>
	]
);
recipes.addShapeless(
	"enderio-dark_steel_upgrade_t_n_t_3",
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt2"}), [
		<draconicevolution:draconic_core>, <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearIronInfinity>
	]
);
recipes.addShapeless(
	"enderio-dark_steel_upgrade_t_n_t_4",
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt3"}), [
		<draconicevolution:wyvern_core>, <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearEnergized>
	]
);
recipes.addShapeless(
	"enderio-dark_steel_upgrade_t_n_t_5",
	<enderio:item_dark_steel_upgrade:1>.withTag({"enderio:dsu": "enderio:tnt4"}), [
		<draconicevolution:awakened_core>, <enderio:item_dark_steel_upgrade>, <minecraft:tnt>, <ore:gearVibrant>
	]
);




//
// Immersive Engineering
//

// harder recipe for Storage Crate
recipes.removeByRecipeName("immersiveengineering:wooden_devices/crate");
recipes.addShaped(
	"immersiveengineering-wooden_devices/crate",
	<immersiveengineering:wooden_device0>, [
		[<ore:plankTreatedWood>, <minecraft:shulker_shell>, <ore:plankTreatedWood>],
		[<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
		[<ore:plankTreatedWood>, <minecraft:shulker_shell>, <ore:plankTreatedWood>]
	]
);

// remove iron nugget
mods.jei.JEI.removeAndHide(<immersiveengineering:metal:29>);

// silver
recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_ingot_uncraft");
recipes.removeByRecipeName("immersiveengineering:metal_storage/silver_ingot");
recipes.addShapeless(
	"immersiveengineering-silver_nugget",
	<immersiveengineering:metal:23> * 9,
	[<ore:ingotSilver>]
);
recipes.addShaped(
	"immersiveengineering-silver_ingot",
	<ic2:ingot:4>, [
		[<immersiveengineering:metal:23>, <immersiveengineering:metal:23>, <immersiveengineering:metal:23>],
		[<immersiveengineering:metal:23>, <immersiveengineering:metal:23>, <immersiveengineering:metal:23>],
		[<immersiveengineering:metal:23>, <immersiveengineering:metal:23>, <immersiveengineering:metal:23>]
	]
);

// harden steel plate crafting
recipes.removeByRecipeName("immersiveengineering:material/plate_steel");

// recipe for Steel Mechanical Component
recipes.addShaped(
	"immersiveengineering-sheetmetal",
	<immersiveengineering:metal:38> * 5, [
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
		[<ore:ingotSteel>, <minecraft:anvil>, <ore:ingotSteel>],
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
	]
);




//
// IndustrialCraft 2
//

// Forge Hammer tweak
<ic2:forge_hammer>.maxDamage = 249;

// remove double slab from Advanced Solar Panels
mods.jei.JEI.removeAndHide(<advanced_solar_panels:double_stone_slab>);

// Chunk Loader
recipes.removeByRecipeName("chickenchunks:chunk_loader");
recipes.addShaped(
	"chickenchunks-chunk_loader",
	<chickenchunks:chunk_loader>, [
		[null, <ore:itemEnderCrystal>, null],
		[<ore:gemDiamond>, <ore:blockGold>, <ore:gemDiamond>],
		[<ore:obsidian>, <ic2:te:82>, <ore:obsidian>]
	]
);

// harder Electric Jetpack
recipes.removeByRecipeName("ic2:123");
recipes.addShaped(
	"ic2-123",
	<ic2:jetpack_electric>.withTag({}), [
		[<ic2:casing:5>, <ore:circuitAdvanced>, <ic2:casing:5>],
		[<ic2:casing:5>, <ic2:te:74>, <ic2:casing:5>],
		[<ore:itemGhastTear>, <ic2:jetpack:27>, <ore:itemGhastTear>]
	]
);

// harder recipe for reinforced glass
recipes.removeByRecipeName("ic2:4");
recipes.removeByRecipeName("ic2:5");
recipes.addShaped(
	"ic2-4",
	<ic2:glass> * 7, [
		[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>],
		[<ore:plateAdvancedAlloy>, <ic2:resource:11>, <ore:plateAdvancedAlloy>],
		[<ore:blockGlassColorless>, <ore:blockGlassColorless>, <ore:blockGlassColorless>]
	]
);
recipes.addShaped(
	"ic2-5",
	<ic2:glass> * 7, [
		[<ore:blockGlassColorless>, <ore:plateAdvancedAlloy>, <ore:blockGlassColorless>],
		[<ore:blockGlassColorless>, <ic2:resource:11>, <ore:blockGlassColorless>],
		[<ore:blockGlassColorless>, <ore:plateAdvancedAlloy>, <ore:blockGlassColorless>]
	]
);

// Iridium Storage Box
recipes.removeByRecipeName("ic2:336");
recipes.removeByRecipeName("ic2:337");
recipes.removeByRecipeName("ic2:338");
recipes.removeByRecipeName("ic2:339");
recipes.removeByRecipeName("ic2:340");
recipes.addShaped(
	"ic2-336",
	<ic2:te:111>, [
		[<ore:logWood>, <ore:plankWood>, <ore:logWood>],
		[<ore:plankWood>, <minecraft:shulker_shell>, <ore:plankWood>],
		[<ore:logWood>, <ore:plankWood>, <ore:logWood>]
	]
);
recipes.addShaped(
	"ic2-337",
	<ic2:te:112>, [
		[<ore:plateIron>, <ic2:casing:3>, <ore:plateIron>],
		[<ic2:casing:3>, <minecraft:shulker_shell>, <ic2:casing:3>],
		[<ore:plateIron>, <ic2:casing:3>, <ore:plateIron>]
	]
);
recipes.addShaped(
	"ic2-338",
	<ic2:te:113>, [
		[<ore:plateBronze>, <ic2:casing>, <ore:plateBronze>],
		[<ic2:casing>, <minecraft:shulker_shell>, <ic2:casing>],
		[<ore:plateBronze>, <ic2:casing>, <ore:plateBronze>]
	]
);
recipes.addShaped(
	"ic2-339",
	<ic2:te:114>, [
		[<ore:plateSteel>, <ic2:casing:5>, <ore:plateSteel>],
		[<ic2:casing:5>, <minecraft:shulker_shell>, <ic2:casing:5>],
		[<ore:plateSteel>, <ic2:casing:5>, <ore:plateSteel>]
	]
);
recipes.addShaped(
	"ic2-340",
	<ic2:te:115>, [
		[<ic2:crafting:4>, <ore:plateSteel>, <ic2:crafting:4>],
		[<ore:plateSteel>, <minecraft:shulker_shell>, <ore:plateSteel>],
		[<ic2:crafting:4>, <ore:plateSteel>, <ic2:crafting:4>]
	]
);

// Molecular Transformer
recipes.removeByRecipeName("ic2:460");
recipes.removeByRecipeName("ic2:459");
recipes.addShaped(
	"ic2-460",
	<advanced_solar_panels:machines>, [
		[<ore:machineBlockAdvanced>, <ic2:te:80>, <ore:machineBlockAdvanced>],
		[<ic2:te:61>, <ore:craftingMTCore>, <ic2:te:63>],
		[<ore:machineBlockAdvanced>, <ic2:te:80>, <ore:machineBlockAdvanced>]
	]
);
recipes.addShaped(
	"ic2-459",
	<advanced_solar_panels:crafting:12>, [
		[<advanced_solar_panels:crafting:6>, <advanced_solar_panels:crafting:6>, <advanced_solar_panels:crafting:6>],
		[<advanced_solar_panels:crafting:6>, <draconicevolution:wyvern_core>, <advanced_solar_panels:crafting:6>],
		[<advanced_solar_panels:crafting:6>, <ic2:iridium_reflector>, <advanced_solar_panels:crafting:6>]
	]
);

// upgradable helmets
recipes.removeByRecipeName("ic2:130");
recipes.addShaped(
	"ic2-130",
	<ic2:quantum_helmet>, [
		[<ic2:glass>, <ic2:nano_helmet:*> | <advanced_solar_panels:advancedsolarhelmet>.withTag({}), <ic2:glass>],
		[<ic2:crafting:4>, <ore:lapotronCrystal>, <ic2:crafting:4>],
		[<ore:circuitAdvanced>, <ic2:hazmat_helmet>, <ore:circuitAdvanced>]
	]
);




//
// Applied Energistics 2
//
mods.jei.JEI.removeAndHide(<appliedenergistics2:material:40>);

// remove two types of cell intercrafting
recipes.removeByRecipeName("extracells:storagecells/fluid/e2acasing");
recipes.removeByRecipeName("extracells:storagecells/fluid/a2ecasing");

// harder recipe for Portable Cell
recipes.removeByRecipeName("appliedenergistics2:tools/network_portable_cell");
recipes.addShaped(
	"appliedenergistics2-tools/network_portable_cell",
	<appliedenergistics2:portable_cell>.withTag({}), [
		[<appliedenergistics2:chest>, <appliedenergistics2:material:35>],
		[<appliedenergistics2:energy_cell>, <minecraft:shulker_shell> | <immersiveengineering:wooden_device0>]
	]
);

// harder recipe for Wireless Crafting Terminal
recipes.removeByRecipeName("wct:wct");
recipes.addShapeless(
	"wct-wct",
	<wct:wct>.withTag({InfinityEnergy: 0}), [
		<appliedenergistics2:wireless_terminal>,
		<draconicevolution:wyvern_core>,
		<appliedenergistics2:part:360>,
		<draconicevolution:dislocator_advanced>
	]
);

// harder recipe for Infinity Booster Card
recipes.removeByRecipeName("ae2wtlib:booster_card_new");
recipes.addShaped(
	"ae2wtlib-booster_card_new",
	<ae2wtlib:infinity_booster_card>, [
		[<appliedenergistics2:material:9>, <minecraft:end_crystal>, <appliedenergistics2:material:9>],
		[null, <appliedenergistics2:material:41>, null]
	]
);

// removing Univers
mods.jei.JEI.removeAndHide(<extracells:terminal.universal.wireless>);
//recipes.removeByRecipeName("extracells:universalcraftingterminalrecipe");




//
// Draconic Evolution
//
recipes.removeByRecipeName("draconicevolution:draconic_core");
recipes.addShaped(
	"draconicevolution-draconic_core",
	<draconicevolution:draconic_core>, [
		[<ore:ingotDraconium>, <ic2:crafting:4>, <ore:ingotDraconium>],
		[<ore:ingotStellarAlloy>, <ore:gemDiamond>, <ore:ingotStellarAlloy>],
		[<ore:ingotDraconium>, <ic2:crafting:4>, <ore:ingotDraconium>]
	]
);

// Wywern Armor
recipes.removeByRecipeName("draconicevolution:wyvern_helm");
recipes.removeByRecipeName("draconicevolution:wyvern_chest");
recipes.removeByRecipeName("draconicevolution:wyvern_legs");
recipes.removeByRecipeName("draconicevolution:wyvern_boots");
recipes.addShaped(
	"draconicevolution-wyvern_helm",
	<draconicevolution:wyvern_helm>, [
		[<ore:blockDraconium>, <draconicevolution:wyvern_core:*>, <ore:blockDraconium>],
		[<ore:netherStar>, <ic2:quantum_helmet:*> | <advanced_solar_panels:hybridsolarhelmet>.withTag({}) | <advanced_solar_panels:ultimatesolarhelmet>.withTag({}), <ore:netherStar>],
		[<ore:blockDraconium>, <draconicevolution:wyvern_energy_core:*>, <ore:blockDraconium>]
	]
);
recipes.addShaped(
	"draconicevolution-wyvern_chest",
	<draconicevolution:wyvern_chest>, [
		[<ore:blockDraconium>, <draconicevolution:wyvern_core:*>, <ore:blockDraconium>],
		[<ore:netherStar>, <ic2:quantum_chestplate:*>, <ore:netherStar>],
		[<ore:blockDraconium>, <draconicevolution:wyvern_energy_core:*>, <ore:blockDraconium>]
	]
);
recipes.addShaped(
	"draconicevolution-wyvern_legs",
	<draconicevolution:wyvern_legs>, [
		[<ore:blockDraconium>, <draconicevolution:wyvern_core:*>, <ore:blockDraconium>],
		[<ore:netherStar>, <ic2:quantum_leggings:*>, <ore:netherStar>],
		[<ore:blockDraconium>, <draconicevolution:wyvern_energy_core:*>, <ore:blockDraconium>]
	]
);
recipes.addShaped(
	"draconicevolution-wyvern_boots",
	<draconicevolution:wyvern_boots>, [
		[<ore:blockDraconium>, <draconicevolution:wyvern_core:*>, <ore:blockDraconium>],
		[<ore:netherStar>, <ic2:quantum_boots:*>, <ore:netherStar>],
		[<ore:blockDraconium>, <draconicevolution:wyvern_energy_core:*>, <ore:blockDraconium>]
	]
);




//
// Forestry
//
mods.jei.JEI.removeAndHide(<forestry:charcoal>);
/*
mods.jei.JEI.removeAndHide(<forestry:greenhouse:0>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:3>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:4>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse:5>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:0>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:1>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:2>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:3>);
mods.jei.JEI.removeAndHide(<forestry:climatiser:4>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse.window>);
mods.jei.JEI.removeAndHide(<forestry:greenhouse.window_up>);
*/




//
// ProjectRed
//

// different recipe for Circuit Plate
furnace.remove(<projectred-core:resource_item>);
recipes.addShaped(
	"projectred-plate",
	<projectred-core:resource_item> * 8, [
		[<ore:stone>, null, <ore:stone>],
		[<ore:stone>, null, <ore:stone>]
	]
);




//
// Extreme Reactors
//

// remove steel from extreme reactors
mods.jei.JEI.removeAndHide(<bigreactors:ingotsteel>);
mods.jei.JEI.removeAndHide(<bigreactors:blocksteel>);

// harder recipe for reactor
recipes.removeByRecipeName("bigreactors:reactorcasingcores");
recipes.removeByRecipeName("bigreactors:reactorcasing");
recipes.removeByRecipeName("bigreactors:reactorglass_vanillaglass");
recipes.removeByRecipeName("bigreactors:reactorcontrolrod");
recipes.removeByRecipeName("bigreactors:reactorfuelrod_vanillaglass");
recipes.removeByRecipeName("bigreactors:reactorcoolantport");
recipes.removeByRecipeName("bigreactors:reactoraccessport");
recipes.removeByRecipeName("bigreactors:reactorcontroller");
recipes.removeByRecipeName("bigreactors:reactorpowertaprf");
recipes.removeByRecipeName("bigreactors:reactorredstoneport");
recipes.removeByRecipeName("bigreactors:reactorcomputerport_opencomputers");
recipes.addShaped(
	"bigreactors-reactorcasingcores",
	<bigreactors:reactorcasingcores>, [
		[<ore:plateLead>, <ore:plateSteel>, <ore:plateLead>],
		[<ore:plateGold>, <ore:dustRedstone>, <ore:plateGold>],
		[<ore:plateLead>, <ore:plateSteel>, <ore:plateLead>]
	]
);
recipes.addShaped(
	"bigreactors-reactorcasing",
	<bigreactors:reactorcasing> * 4, [
		[<ic2:resource:11>, <ore:plateSteel>, <ic2:resource:11>],
		[<ore:plateSteel>, <bigreactors:reactorcasingcores>, <ore:plateSteel>],
		[<ic2:resource:11>, <ore:plateSteel>, <ic2:resource:11>]
	]
);
recipes.addShaped(
	"bigreactors-reactorglass_vanillaglass",
	<bigreactors:reactorglass>, [
		[<ic2:glass>, <bigreactors:reactorcasing>, <ic2:glass>]
	]
);
recipes.addShaped(
	"bigreactors-reactorcontrolrod",
	<bigreactors:reactorcontrolrod>, [
		[<bigreactors:reactorcasing>, <minecraft:sticky_piston>, <bigreactors:reactorcasing>],
		[<ore:ingotHOPGraphite>, <ore:ingotSteel>, <ore:ingotHOPGraphite>],
		[<bigreactors:reactorcasing>, <ore:ingotSteel>, <bigreactors:reactorcasing>]
	]
);
recipes.addShaped(
	"bigreactors-reactorfuelrod_vanillaglass",
	<bigreactors:reactorfuelrod>, [
		[<ore:ingotHOPGraphite>, <ore:ingotAluminum>, <ore:ingotHOPGraphite>],
		[<ic2:glass>, <ore:ingotUranium>, <ic2:glass>],
		[<ore:ingotHOPGraphite>, <ore:ingotAluminum>, <ore:ingotHOPGraphite>]
	]
);
recipes.addShaped(
	"bigreactors-reactorcoolantport",
	<bigreactors:reactorcoolantport>, [
		[<bigreactors:reactorcasing>, <immersiveengineering:metal_device0:5>, <bigreactors:reactorcasing>],
		[<ore:plateSteel>, <extrautils2:drum:1>, <ore:plateSteel>],
		[<bigreactors:reactorcasing>, <ore:plateLead>, <bigreactors:reactorcasing>]
	]
);
recipes.addShaped(
	"bigreactors-reactoraccessport",
	<bigreactors:reactoraccessport>, [
		[<bigreactors:reactorcasing>, <minecraft:hopper>, <bigreactors:reactorcasing>],
		[<ore:plateSteel>, <ore:chestWood>, <ore:plateSteel>],
		[<bigreactors:reactorcasing>, <ore:plateLead>, <bigreactors:reactorcasing>]
	]
);
recipes.addShaped(
	"bigreactors-reactorcontroller",
	<bigreactors:reactorcontroller>, [
		[<bigreactors:reactorcasing>, <minecraft:comparator>, <bigreactors:reactorcasing>],
		[<ore:plateGold>, <ore:oc:case3>, <ore:plateGold>],
		[<bigreactors:reactorcasing>, <ore:dustRedstone>, <bigreactors:reactorcasing>]
	]
);
recipes.addShaped(
	"bigreactors-reactorpowertaprf",
	<bigreactors:reactorpowertaprf>, [
		[<bigreactors:reactorcasing>, <ore:dustRedstone>, <bigreactors:reactorcasing>],
		[<ore:plateGold>, <ore:plateDenseGold>, <ore:plateGold>],
		[<bigreactors:reactorcasing>, <ore:dustRedstone>, <bigreactors:reactorcasing>]
	]
);
recipes.addShaped(
	"bigreactors-reactorredstoneport",
	<bigreactors:reactorredstoneport>, [
		[<bigreactors:reactorcasing>, <ore:dustRedstone>, <bigreactors:reactorcasing>],
		[<ore:plateGold>, <ore:blockRedstone>, <ore:plateGold>],
		[<bigreactors:reactorcasing>, <ore:dustRedstone>, <bigreactors:reactorcasing>]
	]
);
recipes.addShaped(
	"bigreactors-reactorcomputerport_opencomputers",
	<bigreactors:reactorcomputerport>, [
		[<bigreactors:reactorcasing>, <ore:oc:componentBus3>, <bigreactors:reactorcasing>],
		[<ore:plateGold>, <ore:oc:cpu3>, <ore:plateGold>],
		[<bigreactors:reactorcasing>, <ore:oc:wlanCard2>, <bigreactors:reactorcasing>]
	]
);

// harder recipes for turbine
recipes.removeByRecipeName("bigreactors:turbinehousingcores");
recipes.removeByRecipeName("bigreactors:turbinehousing");
recipes.removeByRecipeName("bigreactors:turbineglass_vanillaglass");
recipes.removeByRecipeName("bigreactors:turbinebearing");
recipes.removeByRecipeName("bigreactors:turbinerotorshaft");
recipes.removeByRecipeName("bigreactors:turbinerotorblade");
recipes.removeByRecipeName("bigreactors:turbinecomputerport_opencomputers");
recipes.removeByRecipeName("bigreactors:turbinefluidport");
recipes.removeByRecipeName("bigreactors:turbinecontroller");
recipes.removeByRecipeName("bigreactors:turbinepowertaprf");
recipes.addShaped(
	"bigreactors-turbinehousingcores",
	<bigreactors:turbinehousingcores>, [
		[<ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>],
		[<ore:plateGold>, <minecraft:comparator>, <ore:plateGold>],
		[<ore:plateSteel>, <ore:gemDiamond>, <ore:plateSteel>]
	]
);
recipes.addShaped(
	"bigreactors-turbinehousing",
	<bigreactors:turbinehousing> * 4, [
		[<ic2:resource:11>, <ore:plateSteel>, <ic2:resource:11>],
		[<ore:plateSteel>, <bigreactors:turbinehousingcores>, <ore:plateSteel>],
		[<ic2:resource:11>, <ore:plateSteel>, <ic2:resource:11>]
	]
);
recipes.addShaped(
	"bigreactors-turbineglass_vanillaglass",
	<bigreactors:turbineglass>, [
		[<ic2:glass>, <bigreactors:turbinehousing>, <ic2:glass>]
	]
);
recipes.addShaped(
	"bigreactors-turbinebearing",
	<bigreactors:turbinebearing>, [
		[<bigreactors:turbinehousing>, <bigreactors:turbinerotorshaft>, <bigreactors:turbinehousing>],
		[<ore:ingotCyanite>, <ore:blockDiamond>, <ore:ingotCyanite>],
		[<bigreactors:turbinehousing>, <bigreactors:turbinerotorshaft>, <bigreactors:turbinehousing>]
	]
);
recipes.addShaped(
	"bigreactors-turbinerotorshaft",
	<bigreactors:turbinerotorshaft>, [
		[null, <ore:plateSteel>, null],
		[<ore:plateSteel>, <ore:ingotCyanite>, <ore:plateSteel>],
		[null, <ore:plateSteel>, null]
	]
);
recipes.addShaped(
	"bigreactors-turbinerotorblade",
	<bigreactors:turbinerotorblade>, [
		[<ore:ingotCyanite>, <ore:plateSteel>, <ore:plateSteel>]
	]
);
recipes.addShaped(
	"bigreactors-turbinecomputerport_opencomputers",
	<bigreactors:turbinecomputerport>, [
		[<bigreactors:turbinehousing>, <ore:oc:componentBus3>, <bigreactors:turbinehousing>],
		[<ore:plateGold>, <ore:oc:cpu3>, <ore:plateGold>],
		[<bigreactors:turbinehousing>, <ore:oc:wlanCard2>, <bigreactors:turbinehousing>]
	]
);
recipes.addShaped(
	"bigreactors-turbinefluidport",
	<bigreactors:turbinefluidport>, [
		[<bigreactors:turbinehousing>, <immersiveengineering:metal_device0:5>, <bigreactors:turbinehousing>],
		[<ore:plateSteel>, <extrautils2:drum:1>, <ore:plateSteel>],
		[<bigreactors:turbinehousing>, <ore:plateLead>, <bigreactors:turbinehousing>]
	]
);
recipes.addShaped(
	"bigreactors-turbinecontroller",
	<bigreactors:turbinecontroller>, [
		[<bigreactors:turbinehousing>, <minecraft:comparator>, <bigreactors:turbinehousing>],
		[<ore:ingotPlutonium>, <ore:oc:case3>, <ore:ingotPlutonium>],
		[<bigreactors:turbinehousing>, <ore:dustRedstone>, <bigreactors:turbinehousing>]
	]
);
recipes.addShaped(
	"bigreactors-turbinepowertaprf",
	<bigreactors:turbinepowertaprf>, [
		[<bigreactors:turbinehousing>, <ore:dustRedstone>, <bigreactors:turbinehousing>],
		[<ore:plateGold>, <ore:plateDenseGold>, <ore:plateGold>],
		[<bigreactors:turbinehousing>, <ore:dustRedstone>, <bigreactors:turbinehousing>]
	]
);




//
// Storage Drawers
//

// infinite storage drawer upgrade
recipes.addShaped(
	"storagedrawers-upgrade_storage_infinite",
	<storagedrawers:upgrade_creative>, [
		[<ore:stickWood>, <advanced_solar_panels:crafting:9>, <ore:stickWood>],
		[<ore:ingotStellarAlloy>, <storagedrawers:upgrade_template>, <ore:ingotStellarAlloy>],
		[<ore:stickWood>, <ore:compressed8xCobblestone>, <ore:stickWood>]
	]
);




//
// OpenComputers
//

// openpython EEPROM
recipes.addShapeless(
	"opencomputers-openpython_eeprom",
	<opencomputers:storage>.withTag({"oc:data": {"oc:readonly": 0 as byte, "oc:eeprom": [45, 45, 91, 61, 61, 91, 13, 10, 34, 34, 34, 79, 112, 101, 110, 80, 121, 116, 104, 111, 110, 32, 69, 69, 80, 82, 79, 77, 34, 34, 34, 13, 10, 13, 10, 13, 10, 100, 101, 102, 32, 109, 97, 105, 110, 40, 41, 58, 13, 10, 32, 32, 32, 32, 103, 108, 111, 98, 97, 108, 115, 40, 41, 46, 112, 111, 112, 40, 39, 109, 97, 105, 110, 39, 41, 13, 10, 32, 32, 32, 32, 102, 114, 111, 109, 32, 117, 99, 111, 109, 112, 111, 110, 101, 110, 116, 32, 105, 109, 112, 111, 114, 116, 32, 105, 110, 118, 111, 107, 101, 44, 32, 103, 101, 116, 95, 108, 105, 115, 116, 32, 97, 115, 32, 103, 101, 116, 95, 99, 111, 109, 112, 111, 110, 101, 110, 116, 115, 13, 10, 32, 32, 32, 32, 102, 114, 111, 109, 32, 117, 99, 111, 109, 112, 117, 116, 101, 114, 32, 105, 109, 112, 111, 114, 116, 32, 99, 114, 97, 115, 104, 44, 32, 103, 101, 116, 95, 99, 111, 109, 112, 117, 116, 101, 114, 95, 97, 100, 100, 114, 101, 115, 115, 13, 10, 13, 10, 32, 32, 32, 32, 100, 101, 102, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 40, 116, 41, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 115, 101, 113, 32, 61, 32, 103, 101, 116, 95, 99, 111, 109, 112, 111, 110, 101, 110, 116, 115, 40, 116, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 115, 101, 113, 91, 48, 93, 32, 105, 102, 32, 115, 101, 113, 32, 101, 108, 115, 101, 32, 78, 111, 110, 101, 13, 10, 13, 10, 32, 32, 32, 32, 100, 101, 102, 32, 99, 104, 101, 99, 107, 95, 98, 111, 111, 116, 97, 98, 108, 101, 40, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 115, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 115, 32, 97, 110, 100, 32, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 39, 101, 120, 105, 115, 116, 115, 39, 44, 32, 39, 47, 105, 110, 105, 116, 46, 112, 121, 39, 41, 13, 10, 13, 10, 32, 32, 32, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 95, 95, 112, 97, 116, 104, 95, 95, 13, 10, 32, 32, 32, 32, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 115, 32, 61, 32, 103, 101, 116, 95, 99, 111, 109, 112, 111, 110, 101, 110, 116, 115, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 13, 10, 13, 10, 32, 32, 32, 32, 97, 100, 100, 114, 101, 115, 115, 32, 61, 32, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 39, 103, 101, 116, 68, 97, 116, 97, 39, 41, 46, 100, 101, 99, 111, 100, 101, 40, 41, 13, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 99, 104, 101, 99, 107, 95, 98, 111, 111, 116, 97, 98, 108, 101, 40, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 115, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 111, 107, 101, 40, 95, 95, 112, 97, 116, 104, 95, 95, 44, 32, 39, 115, 101, 116, 68, 97, 116, 97, 39, 44, 32, 98, 39, 39, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 115, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 32, 99, 104, 101, 99, 107, 95, 98, 111, 111, 116, 97, 98, 108, 101, 40, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 115, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 39, 115, 101, 116, 68, 97, 116, 97, 39, 44, 32, 97, 100, 100, 114, 101, 115, 115, 46, 101, 110, 99, 111, 100, 101, 40, 41, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 101, 108, 115, 101, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 99, 114, 97, 115, 104, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 41, 13, 10, 13, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 32, 61, 32, 103, 101, 116, 95, 99, 111, 109, 112, 117, 116, 101, 114, 95, 97, 100, 100, 114, 101, 115, 115, 40, 41, 13, 10, 32, 32, 32, 32, 105, 110, 118, 111, 107, 101, 40, 99, 111, 109, 112, 117, 116, 101, 114, 44, 32, 39, 98, 101, 101, 112, 39, 44, 32, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 13, 10, 13, 10, 32, 32, 32, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 40, 34, 103, 112, 117, 34, 41, 13, 10, 32, 32, 32, 32, 109, 111, 110, 105, 116, 111, 114, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 40, 34, 109, 111, 110, 105, 116, 111, 114, 34, 41, 13, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 109, 111, 110, 105, 116, 111, 114, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 109, 111, 110, 105, 116, 111, 114, 41, 13, 10, 13, 10, 32, 32, 32, 32, 100, 101, 102, 32, 108, 111, 97, 100, 40, 97, 100, 100, 114, 101, 115, 115, 41, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 104, 97, 110, 100, 108, 101, 32, 61, 32, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 39, 111, 112, 101, 110, 39, 44, 32, 39, 47, 105, 110, 105, 116, 46, 112, 121, 39, 44, 32, 39, 114, 39, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 91, 93, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 116, 114, 121, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 119, 104, 105, 108, 101, 32, 84, 114, 117, 101, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 102, 32, 61, 32, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 39, 114, 101, 97, 100, 39, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 52, 48, 57, 54, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 98, 117, 102, 58, 32, 98, 114, 101, 97, 107, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 46, 97, 112, 112, 101, 110, 100, 40, 98, 117, 102, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 102, 105, 110, 97, 108, 108, 121, 58, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 39, 99, 108, 111, 115, 101, 39, 44, 32, 104, 97, 110, 100, 108, 101, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 104, 97, 110, 100, 108, 101, 46, 100, 105, 115, 112, 111, 115, 101, 40, 41, 13, 10, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 110, 116, 101, 110, 116, 32, 61, 32, 98, 34, 34, 46, 106, 111, 105, 110, 40, 98, 117, 102, 102, 101, 114, 41, 13, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 99, 111, 110, 116, 101, 110, 116, 46, 100, 101, 99, 111, 100, 101, 40, 41, 13, 10, 13, 10, 32, 32, 32, 32, 99, 111, 110, 116, 101, 110, 116, 32, 61, 32, 108, 111, 97, 100, 40, 97, 100, 100, 114, 101, 115, 115, 41, 13, 10, 32, 32, 32, 32, 99, 111, 110, 116, 101, 120, 116, 32, 61, 32, 123, 39, 95, 95, 110, 97, 109, 101, 95, 95, 39, 58, 32, 39, 95, 95, 109, 97, 105, 110, 95, 95, 39, 44, 32, 39, 95, 95, 112, 97, 116, 104, 95, 95, 39, 58, 32, 97, 100, 100, 114, 101, 115, 115, 125, 13, 10, 32, 32, 32, 32, 102, 117, 110, 99, 32, 61, 32, 99, 111, 109, 112, 105, 108, 101, 40, 99, 111, 110, 116, 101, 110, 116, 44, 32, 39, 47, 105, 110, 105, 116, 46, 112, 121, 39, 44, 32, 34, 101, 120, 101, 99, 34, 41, 13, 10, 32, 32, 32, 32, 101, 120, 101, 99, 40, 102, 117, 110, 99, 44, 32, 99, 111, 110, 116, 101, 120, 116, 41, 13, 10, 13, 10, 13, 10, 105, 102, 32, 95, 95, 110, 97, 109, 101, 95, 95, 32, 61, 61, 32, 39, 95, 95, 109, 97, 105, 110, 95, 95, 39, 58, 13, 10, 32, 32, 32, 32, 109, 97, 105, 110, 40, 41, 13, 10, 13, 10, 35, 32, 93, 61, 61, 93, 32, 101, 114, 114, 111, 114, 32, 34, 84, 104, 105, 115, 32, 69, 69, 80, 82, 79, 77, 32, 114, 101, 113, 117, 105, 114, 101, 115, 32, 97, 32, 67, 80, 85, 32, 114, 117, 110, 110, 105, 110, 103, 32, 116, 104, 101, 32, 79, 112, 101, 110, 80, 121, 116, 104, 111, 110, 32, 97, 114, 99, 104, 105, 116, 101, 99, 116, 117, 114, 101, 46, 34, 13, 10] as byte[] as byte[], "oc:label": "EEPROM (OpenPython BIOS)", "oc:userdata": [] as byte[] as byte[]}}), [
		<opencomputers:storage>.withTag({"oc:data": {"oc:readonly": 0 as byte, "oc:eeprom": [108, 111, 99, 97, 108, 32, 105, 110, 105, 116, 10, 100, 111, 10, 32, 32, 108, 111, 99, 97, 108, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 105, 110, 118, 111, 107, 101, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 115, 117, 108, 116, 32, 61, 32, 116, 97, 98, 108, 101, 46, 112, 97, 99, 107, 40, 112, 99, 97, 108, 108, 40, 99, 111, 109, 112, 111, 110, 101, 110, 116, 95, 105, 110, 118, 111, 107, 101, 44, 32, 97, 100, 100, 114, 101, 115, 115, 44, 32, 109, 101, 116, 104, 111, 100, 44, 32, 46, 46, 46, 41, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 114, 101, 115, 117, 108, 116, 91, 49, 93, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 115, 117, 108, 116, 91, 50, 93, 10, 32, 32, 32, 32, 101, 108, 115, 101, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 116, 97, 98, 108, 101, 46, 117, 110, 112, 97, 99, 107, 40, 114, 101, 115, 117, 108, 116, 44, 32, 50, 44, 32, 114, 101, 115, 117, 108, 116, 46, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 45, 45, 32, 98, 97, 99, 107, 119, 97, 114, 100, 115, 32, 99, 111, 109, 112, 97, 116, 105, 98, 105, 108, 105, 116, 121, 44, 32, 109, 97, 121, 32, 114, 101, 109, 111, 118, 101, 32, 108, 97, 116, 101, 114, 10, 32, 32, 108, 111, 99, 97, 108, 32, 101, 101, 112, 114, 111, 109, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 101, 101, 112, 114, 111, 109, 34, 41, 40, 41, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 103, 101, 116, 68, 97, 116, 97, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 32, 61, 32, 102, 117, 110, 99, 116, 105, 111, 110, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 101, 101, 112, 114, 111, 109, 44, 32, 34, 115, 101, 116, 68, 97, 116, 97, 34, 44, 32, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 101, 110, 100, 10, 10, 32, 32, 100, 111, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 115, 99, 114, 101, 101, 110, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 115, 99, 114, 101, 101, 110, 34, 41, 40, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 103, 112, 117, 32, 61, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 103, 112, 117, 34, 41, 40, 41, 10, 32, 32, 32, 32, 105, 102, 32, 103, 112, 117, 32, 97, 110, 100, 32, 115, 99, 114, 101, 101, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 103, 112, 117, 44, 32, 34, 98, 105, 110, 100, 34, 44, 32, 115, 99, 114, 101, 101, 110, 41, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 102, 117, 110, 99, 116, 105, 111, 110, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 104, 97, 110, 100, 108, 101, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 111, 112, 101, 110, 34, 44, 32, 34, 47, 105, 110, 105, 116, 46, 108, 117, 97, 34, 41, 10, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 104, 97, 110, 100, 108, 101, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 34, 34, 10, 32, 32, 32, 32, 114, 101, 112, 101, 97, 116, 10, 32, 32, 32, 32, 32, 32, 108, 111, 99, 97, 108, 32, 100, 97, 116, 97, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 114, 101, 97, 100, 34, 44, 32, 104, 97, 110, 100, 108, 101, 44, 32, 109, 97, 116, 104, 46, 104, 117, 103, 101, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 110, 111, 116, 32, 100, 97, 116, 97, 32, 97, 110, 100, 32, 114, 101, 97, 115, 111, 110, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 110, 105, 108, 44, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 32, 32, 98, 117, 102, 102, 101, 114, 32, 61, 32, 98, 117, 102, 102, 101, 114, 32, 46, 46, 32, 40, 100, 97, 116, 97, 32, 111, 114, 32, 34, 34, 41, 10, 32, 32, 32, 32, 117, 110, 116, 105, 108, 32, 110, 111, 116, 32, 100, 97, 116, 97, 10, 32, 32, 32, 32, 98, 111, 111, 116, 95, 105, 110, 118, 111, 107, 101, 40, 97, 100, 100, 114, 101, 115, 115, 44, 32, 34, 99, 108, 111, 115, 101, 34, 44, 32, 104, 97, 110, 100, 108, 101, 41, 10, 32, 32, 32, 32, 114, 101, 116, 117, 114, 110, 32, 108, 111, 97, 100, 40, 98, 117, 102, 102, 101, 114, 44, 32, 34, 61, 105, 110, 105, 116, 34, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 108, 111, 99, 97, 108, 32, 114, 101, 97, 115, 111, 110, 10, 32, 32, 105, 102, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 99, 111, 109, 112, 117, 116, 101, 114, 46, 103, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 41, 10, 32, 32, 32, 32, 102, 111, 114, 32, 97, 100, 100, 114, 101, 115, 115, 32, 105, 110, 32, 99, 111, 109, 112, 111, 110, 101, 110, 116, 46, 108, 105, 115, 116, 40, 34, 102, 105, 108, 101, 115, 121, 115, 116, 101, 109, 34, 41, 32, 100, 111, 10, 32, 32, 32, 32, 32, 32, 105, 110, 105, 116, 44, 32, 114, 101, 97, 115, 111, 110, 32, 61, 32, 116, 114, 121, 76, 111, 97, 100, 70, 114, 111, 109, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 105, 102, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 32, 32, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 115, 101, 116, 66, 111, 111, 116, 65, 100, 100, 114, 101, 115, 115, 40, 97, 100, 100, 114, 101, 115, 115, 41, 10, 32, 32, 32, 32, 32, 32, 32, 32, 98, 114, 101, 97, 107, 10, 32, 32, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 32, 32, 101, 110, 100, 10, 32, 32, 101, 110, 100, 10, 32, 32, 105, 102, 32, 110, 111, 116, 32, 105, 110, 105, 116, 32, 116, 104, 101, 110, 10, 32, 32, 32, 32, 101, 114, 114, 111, 114, 40, 34, 110, 111, 32, 98, 111, 111, 116, 97, 98, 108, 101, 32, 109, 101, 100, 105, 117, 109, 32, 102, 111, 117, 110, 100, 34, 32, 46, 46, 32, 40, 114, 101, 97, 115, 111, 110, 32, 97, 110, 100, 32, 40, 34, 58, 32, 34, 32, 46, 46, 32, 116, 111, 115, 116, 114, 105, 110, 103, 40, 114, 101, 97, 115, 111, 110, 41, 41, 32, 111, 114, 32, 34, 34, 41, 44, 32, 48, 41, 10, 32, 32, 101, 110, 100, 10, 32, 32, 99, 111, 109, 112, 117, 116, 101, 114, 46, 98, 101, 101, 112, 40, 49, 48, 48, 48, 44, 32, 48, 46, 50, 41, 10, 101, 110, 100, 10, 105, 110, 105, 116, 40, 41, 10] as byte[] as byte[], "oc:label": "EEPROM (Lua BIOS)"}}),
		<ore:oc:wrench>
	]
);




//
// Hardcore Questing Mode
//

// Quest Book
recipes.removeByRecipeName("hardcorequesting:quest_book");
recipes.addShapeless("hardcorequesting-quest_book", <hardcorequesting:quest_book>, [<minecraft:book>, <ore:logWood>]);



