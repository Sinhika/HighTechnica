# meat_tweaks.zs
#	Tweaks to OceanCraft & HarvestCraft to make cooked & raw meats work together.
#
# FISH
<ore:listAllfishraw>.add(<MoCreatures:crabraw>);
<ore:listAllfishcooked>.add(<MoCreatures:crabcooked>);

# SPECIFIC MEATS
<ore:listAllchickenraw>.add(<MoCreatures:ostrichraw>);
<ore:listAllchickencooked>.add(<MoCreatures:ostrichcooked>);
<ore:listAllchickenraw>.add(<MoCreatures:turkeyraw>);
<ore:listAllchickencooked>.add(<MoCreatures:turkeycooked>);

# new crab ore entry
<ore:listAllcrabraw>.add(<MoCreatures:crabraw>);

# new raw turtle entry
<ore:listAllturtleraw>.add(<MoCreatures:turtleraw>);
<ore:listAllturtleraw>.add(<harvestcraft:turtlerawItem>);

# replace with HC-style turtle soup recipes - pot, stock, meat
# TODO - may require a bowl as input if eating soup yields a bowl.
recipes.addShapeless(<MoCreatures:turtlesoup>, 
					[<harvestcraft:potItem>.reuse(), <ore:listAllturtleraw>, <harvestcraft:stockItem>]);

# MEAT/FLESH
<ore:listAllmeatraw>.add(<MoCreatures:ratraw>);
<ore:listAllmeatcooked>.add(<MoCreatures:ratcooked>);

# lastly
<ore:listAllmeatcooked>.addAll(<ore:listAllchickencooked>);
<ore:listAllmeatraw>.addAll(<ore:listAllchickenraw>);
<ore:listAllmeatraw>.addAll(<ore:listAllturtleraw>);
