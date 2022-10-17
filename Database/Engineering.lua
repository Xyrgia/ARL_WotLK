--[[
************************************************************************
Engineering.lua
Engineering data for all of Ackis Recipe List
************************************************************************
File date: 2010-05-11T16:20:27Z
File revision: @file-revision@
Project revision: @project-revision@
Project version: v2.01-14-gfc58e9f
************************************************************************
Please see http://www.wowace.com/addons/arl/ for more information.
************************************************************************
This source code is released under All Rights Reserved.
************************************************************************
]]--

-------------------------------------------------------------------------------
-- AddOn namespace.
-------------------------------------------------------------------------------
local MODNAME	= "Ackis Recipe List"
local addon	= LibStub("AceAddon-3.0"):GetAddon(MODNAME)
local L		= LibStub("AceLocale-3.0"):GetLocale(MODNAME)

local private	= select(2, ...)

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local F		= private.filter_flags
local A		= private.acquire_types
local Q		= private.item_qualities
local REP	= private.rep_levels
local FAC	= private.faction_ids
local V		= private.game_versions

local initialized = false
local num_recipes = 0

--------------------------------------------------------------------------------------------------------------------
-- Counter and wrapper function
--------------------------------------------------------------------------------------------------------------------
local function AddRecipe(spell_id, skill_level, item_id, quality, genesis, optimal_level, medium_level, easy_level, trivial_level, specialty)
	num_recipes = num_recipes + 1
	addon:AddRecipe(spell_id, skill_level, item_id, quality, 4036, specialty, genesis, optimal_level, medium_level, easy_level, trivial_level)
end

function addon:InitEngineering()
	if initialized then
		return num_recipes
	end
	initialized = true

	-- Rough Blasting Powder -- 3918
	AddRecipe(3918, 1, 4357, Q.COMMON, V.ORIG, 1, 20, 30, 40)
	self:AddRecipeFlags(3918, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(3918, A.CUSTOM, 8)

	-- Rough Dynamite -- 3919
	AddRecipe(3919, 1, 4358, Q.COMMON, V.ORIG, 1, 30, 45, 60)
	self:AddRecipeFlags(3919, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(3919, A.CUSTOM, 8)

	-- Crafted Light Shot -- 3920
	AddRecipe(3920, 1, 8067, Q.COMMON, V.ORIG, 1, 30, 45, 60)
	self:AddRecipeFlags(3920, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeAcquire(3920, A.CUSTOM, 8)

	-- Handful of Copper Bolts -- 3922
	AddRecipe(3922, 30, 4359, Q.COMMON, V.ORIG, 30, 45, 52, 60)
	self:AddRecipeFlags(3922, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3922, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 33634)

	-- Rough Copper Bomb -- 3923
	AddRecipe(3923, 30, 4360, Q.COMMON, V.ORIG, 30, 60, 75, 90)
	self:AddRecipeFlags(3923, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3923, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Copper Tube -- 3924
	AddRecipe(3924, 50, 4361, Q.COMMON, V.ORIG, 50, 80, 95, 110)
	self:AddRecipeFlags(3924, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3924, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Rough Boomstick -- 3925
	AddRecipe(3925, 50, 4362, Q.COMMON, V.ORIG, 50, 80, 95, 110)
	self:AddRecipeFlags(3925, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.GUN)
	self:AddRecipeTrainer(3925, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Copper Modulator -- 3926
	AddRecipe(3926, 65, 4363, Q.COMMON, V.ORIG, 65, 95, 110, 125)
	self:AddRecipeFlags(3926, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3926, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Mechanical Squirrel Box -- 3928
	AddRecipe(3928, 75, 4401, Q.UNCOMMON, V.ORIG, 75, 105, 120, 135)
	self:AddRecipeFlags(3928, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(3928, "Kalimdor", "Eastern Kingdoms")

	-- Coarse Blasting Powder -- 3929
	AddRecipe(3929, 75, 4364, Q.COMMON, V.ORIG, 75, 85, 90, 95)
	self:AddRecipeFlags(3929, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3929, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Crafted Heavy Shot -- 3930
	AddRecipe(3930, 75, 8068, Q.COMMON, V.ORIG, 75, 85, 90, 95)
	self:AddRecipeFlags(3930, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeTrainer(3930, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Coarse Dynamite -- 3931
	AddRecipe(3931, 75, 4365, Q.COMMON, V.ORIG, 75, 90, 97, 105)
	self:AddRecipeFlags(3931, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3931, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Target Dummy -- 3932
	AddRecipe(3932, 85, 4366, Q.COMMON, V.ORIG, 85, 115, 130, 145)
	self:AddRecipeFlags(3932, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3932, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 28697, 17222, 5518, 11037, 18775, 33611, 8736, 16667, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Small Seaforium Charge -- 3933
	AddRecipe(3933, 100, 4367, Q.UNCOMMON, V.ORIG, 100, 130, 145, 160)
	self:AddRecipeFlags(3933, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(3933, "Kalimdor", "Eastern Kingdoms")

	-- Flying Tiger Goggles -- 3934
	AddRecipe(3934, 100, 4368, Q.COMMON, V.ORIG, 100, 130, 145, 160)
	self:AddRecipeFlags(3934, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(3934, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 28697, 17222, 5518, 11037, 18775, 33611, 8736, 16667, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Deadly Blunderbuss -- 3936
	AddRecipe(3936, 105, 4369, Q.COMMON, V.ORIG, 105, 130, 142, 155)
	self:AddRecipeFlags(3936, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.GUN)
	self:AddRecipeTrainer(3936, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Large Copper Bomb -- 3937
	AddRecipe(3937, 105, 4370, Q.COMMON, V.ORIG, 105, 105, 130, 155)
	self:AddRecipeFlags(3937, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3937, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Bronze Tube -- 3938
	AddRecipe(3938, 105, 4371, Q.COMMON, V.ORIG, 105, 105, 130, 155)
	self:AddRecipeFlags(3938, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3938, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Lovingly Crafted Boomstick -- 3939
	AddRecipe(3939, 120, 4372, Q.COMMON, V.ORIG, 120, 145, 157, 170)
	self:AddRecipeFlags(3939, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.GUN)
	self:AddRecipeVendor(3939, 2682, 6730)

	-- Shadow Goggles -- 3940
	AddRecipe(3940, 120, 4373, Q.UNCOMMON, V.ORIG, 120, 145, 157, 170)
	self:AddRecipeFlags(3940, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeWorldDrop(3940, "Kalimdor", "Eastern Kingdoms")

	-- Small Bronze Bomb -- 3941
	AddRecipe(3941, 120, 4374, Q.COMMON, V.ORIG, 120, 120, 145, 170)
	self:AddRecipeFlags(3941, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3941, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Whirring Bronze Gizmo -- 3942
	AddRecipe(3942, 125, 4375, Q.COMMON, V.ORIG, 125, 125, 150, 175)
	self:AddRecipeFlags(3942, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3942, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Flame Deflector -- 3944
	AddRecipe(3944, 125, 4376, Q.UNCOMMON, V.ORIG, 125, 125, 150, 175)
	self:AddRecipeFlags(3944, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(3944, 7800)

	-- Heavy Blasting Powder -- 3945
	AddRecipe(3945, 125, 4377, Q.COMMON, V.ORIG, 125, 125, 135, 145)
	self:AddRecipeFlags(3945, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3945, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Heavy Dynamite -- 3946
	AddRecipe(3946, 125, 4378, Q.COMMON, V.ORIG, 125, 125, 135, 145)
	self:AddRecipeFlags(3946, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3946, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Crafted Solid Shot -- 3947
	AddRecipe(3947, 125, 8069, Q.COMMON, V.ORIG, 125, 125, 135, 145)
	self:AddRecipeFlags(3947, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeTrainer(3947, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Silver-plated Shotgun -- 3949
	AddRecipe(3949, 130, 4379, Q.COMMON, V.ORIG, 130, 155, 167, 180)
	self:AddRecipeFlags(3949, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.GUN)
	self:AddRecipeTrainer(3949, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Big Bronze Bomb -- 3950
	AddRecipe(3950, 140, 4380, Q.COMMON, V.ORIG, 140, 140, 165, 190)
	self:AddRecipeFlags(3950, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3950, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Minor Recombobulator -- 3952
	AddRecipe(3952, 140, 4381, Q.COMMON, V.ORIG, 140, 165, 177, 190)
	self:AddRecipeFlags(3952, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeVendor(3952, 3495, 2683, 2682)

	-- Bronze Framework -- 3953
	AddRecipe(3953, 145, 4382, Q.COMMON, V.ORIG, 145, 145, 170, 195)
	self:AddRecipeFlags(3953, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3953, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Moonsight Rifle -- 3954
	AddRecipe(3954, 145, 4383, Q.UNCOMMON, V.ORIG, 145, 170, 182, 195)
	self:AddRecipeFlags(3954, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.GUN)
	self:AddRecipeWorldDrop(3954, "Kalimdor", "Eastern Kingdoms")

	-- Explosive Sheep -- 3955
	AddRecipe(3955, 150, 4384, Q.COMMON, V.ORIG, 150, 175, 187, 200)
	self:AddRecipeFlags(3955, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3955, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Green Tinted Goggles -- 3956
	AddRecipe(3956, 150, 4385, Q.COMMON, V.ORIG, 150, 175, 187, 200)
	self:AddRecipeFlags(3956, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(3956, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Ice Deflector -- 3957
	AddRecipe(3957, 155, 4386, Q.COMMON, V.ORIG, 155, 175, 185, 195)
	self:AddRecipeFlags(3957, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeLimitedVendor(3957, 2684, 1)

	-- Iron Strut -- 3958
	AddRecipe(3958, 160, 4387, Q.COMMON, V.ORIG, 160, 160, 170, 180)
	self:AddRecipeFlags(3958, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3958, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Discombobulator Ray -- 3959
	AddRecipe(3959, 160, 4388, Q.UNCOMMON, V.ORIG, 160, 180, 190, 200)
	self:AddRecipeFlags(3959, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(3959, 7800)

	-- Portable Bronze Mortar -- 3960
	AddRecipe(3960, 165, 4403, Q.UNCOMMON, V.ORIG, 165, 185, 195, 210)
	self:AddRecipeFlags(3960, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(3960, "Kalimdor", "Eastern Kingdoms")

	-- Gyrochronatom -- 3961
	AddRecipe(3961, 170, 4389, Q.COMMON, V.ORIG, 170, 170, 190, 210)
	self:AddRecipeFlags(3961, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3961, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Iron Grenade -- 3962
	AddRecipe(3962, 175, 4390, Q.COMMON, V.ORIG, 175, 175, 195, 215)
	self:AddRecipeFlags(3962, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3962, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Compact Harvest Reaper Kit -- 3963
	AddRecipe(3963, 175, 4391, Q.COMMON, V.ORIG, 175, 175, 195, 215)
	self:AddRecipeFlags(3963, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3963, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Advanced Target Dummy -- 3965
	AddRecipe(3965, 185, 4392, Q.COMMON, V.ORIG, 185, 185, 205, 225)
	self:AddRecipeFlags(3965, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3965, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Craftsman's Monocle -- 3966
	AddRecipe(3966, 185, 4393, Q.RARE, V.ORIG, 185, 205, 215, 225)
	self:AddRecipeFlags(3966, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeWorldDrop(3966, "Kalimdor", "Eastern Kingdoms")

	-- Big Iron Bomb -- 3967
	AddRecipe(3967, 190, 4394, Q.COMMON, V.ORIG, 190, 190, 210, 230)
	self:AddRecipeFlags(3967, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3967, 11017, 11025, 17634, 3494, 1702, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Goblin Land Mine -- 3968
	AddRecipe(3968, 195, 4395, Q.UNCOMMON, V.ORIG, 195, 215, 225, 235)
	self:AddRecipeFlags(3968, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(3968, "Kalimdor", "Eastern Kingdoms")

	-- Mechanical Dragonling -- 3969
	AddRecipe(3969, 200, 4396, Q.COMMON, V.ORIG, 200, 220, 230, 240)
	self:AddRecipeFlags(3969, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeVendor(3969, 2687)

	-- Gnomish Cloaking Device -- 3971
	AddRecipe(3971, 200, 4397, Q.COMMON, V.ORIG, 200, 220, 230, 240)
	self:AddRecipeFlags(3971, F.ALLIANCE, F.HORDE, F.VENDOR, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeMobDrop(3971, 7800)
	self:AddRecipeLimitedVendor(3971, 6777, 1)

	-- Large Seaforium Charge -- 3972
	AddRecipe(3972, 200, 4398, Q.UNCOMMON, V.ORIG, 200, 200, 220, 240)
	self:AddRecipeFlags(3972, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(3972, "Kalimdor", "Eastern Kingdoms")

	-- Silver Contact -- 3973
	AddRecipe(3973, 90, 4404, Q.COMMON, V.ORIG, 90, 110, 125, 140)
	self:AddRecipeFlags(3973, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3973, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 28697, 17222, 5518, 11037, 18775, 33611, 8736, 16667, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Crude Scope -- 3977
	AddRecipe(3977, 60, 4405, Q.COMMON, V.ORIG, 60, 90, 105, 120)
	self:AddRecipeFlags(3977, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3977, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Standard Scope -- 3978
	AddRecipe(3978, 110, 4406, Q.COMMON, V.ORIG, 110, 135, 147, 160)
	self:AddRecipeFlags(3978, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(3978, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Accurate Scope -- 3979
	AddRecipe(3979, 180, 4407, Q.COMMON, V.ORIG, 180, 200, 210, 220)
	self:AddRecipeFlags(3979, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(3979, 2685)

	-- Ornate Spyglass -- 6458
	AddRecipe(6458, 135, 5507, Q.COMMON, V.ORIG, 135, 160, 172, 185)
	self:AddRecipeFlags(6458, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(6458, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Arclight Spanner -- 7430
	AddRecipe(7430, 50, 6219, Q.COMMON, V.ORIG, 50, 70, 80, 90)
	self:AddRecipeFlags(7430, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.ONE_HAND)
	self:AddRecipeTrainer(7430, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 33634, 26955, 17222, 16726, 5518, 11037, 16667, 33611, 8736, 18775, 28697, 26991, 11031, 33586, 3290, 5174, 19576)

	-- Flash Bomb -- 8243
	AddRecipe(8243, 185, 4852, Q.UNCOMMON, V.ORIG, 185, 185, 205, 225)
	self:AddRecipeFlags(8243, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.QUEST, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(8243, 7800)
	self:AddRecipeQuest(8243, 1559)

	-- Practice Lock -- 8334
	AddRecipe(8334, 100, 6712, Q.COMMON, V.ORIG, 100, 115, 122, 130)
	self:AddRecipeFlags(8334, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(8334, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 28697, 17222, 5518, 11037, 18775, 33611, 8736, 16667, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- EZ-Thro Dynamite -- 8339
	AddRecipe(8339, 100, 6714, Q.UNCOMMON, V.ORIG, 100, 115, 122, 130)
	self:AddRecipeFlags(8339, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(8339, "Kalimdor", "Eastern Kingdoms")

	-- Goblin Rocket Boots -- 8895
	AddRecipe(8895, 225, 7189, Q.COMMON, V.ORIG, 225, 245, 255, 265, 20222)
	self:AddRecipeFlags(8895, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(8895, 8126, 29513)

	-- Gnomish Universal Remote -- 9269
	AddRecipe(9269, 125, 7506, Q.COMMON, V.ORIG, 125, 150, 162, 175)
	self:AddRecipeFlags(9269, F.ALLIANCE, F.HORDE, F.VENDOR, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeMobDrop(9269, 7800)
	self:AddRecipeVendor(9269, 5175, 6730)

	-- Aquadynamic Fish Attractor -- 9271
	AddRecipe(9271, 150, 6533, Q.COMMON, V.ORIG, 150, 150, 160, 170)
	self:AddRecipeFlags(9271, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(9271, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Goblin Jumper Cables -- 9273
	AddRecipe(9273, 165, 7148, Q.COMMON, V.ORIG, 165, 165, 180, 200)
	self:AddRecipeFlags(9273, F.ALLIANCE, F.HORDE, F.VENDOR, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(9273, 7800)
	self:AddRecipeVendor(9273, 4086, 3134, 3537)

	-- Gold Power Core -- 12584
	AddRecipe(12584, 150, 10558, Q.COMMON, V.ORIG, 150, 150, 170, 190)
	self:AddRecipeFlags(12584, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12584, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 16667, 17222, 5518, 11037, 28697, 33611, 8736, 18775, 3290, 26991, 11031, 33586, 5174, 33634, 16726)

	-- Solid Blasting Powder -- 12585
	AddRecipe(12585, 175, 10505, Q.COMMON, V.ORIG, 175, 175, 185, 195)
	self:AddRecipeFlags(12585, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12585, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Solid Dynamite -- 12586
	AddRecipe(12586, 175, 10507, Q.COMMON, V.ORIG, 175, 175, 185, 195)
	self:AddRecipeFlags(12586, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12586, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Bright-Eye Goggles -- 12587
	AddRecipe(12587, 175, 10499, Q.UNCOMMON, V.ORIG, 175, 195, 205, 215)
	self:AddRecipeFlags(12587, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeWorldDrop(12587, "Kalimdor", "Eastern Kingdoms")

	-- Mithril Tube -- 12589
	AddRecipe(12589, 195, 10559, Q.COMMON, V.ORIG, 195, 195, 215, 235)
	self:AddRecipeFlags(12589, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12589, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Gyromatic Micro-Adjustor -- 12590
	AddRecipe(12590, 175, 10498, Q.COMMON, V.ORIG, 175, 175, 195, 215)
	self:AddRecipeFlags(12590, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12590, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Unstable Trigger -- 12591
	AddRecipe(12591, 200, 10560, Q.COMMON, V.ORIG, 200, 200, 220, 240)
	self:AddRecipeFlags(12591, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12591, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Fire Goggles -- 12594
	AddRecipe(12594, 205, 10500, Q.COMMON, V.ORIG, 205, 225, 235, 245)
	self:AddRecipeFlags(12594, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(12594, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Mithril Blunderbuss -- 12595
	AddRecipe(12595, 205, 10508, Q.COMMON, V.ORIG, 205, 225, 235, 245)
	self:AddRecipeFlags(12595, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.GUN)
	self:AddRecipeTrainer(12595, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Hi-Impact Mithril Slugs -- 12596
	AddRecipe(12596, 210, 10512, Q.COMMON, V.ORIG, 210, 210, 230, 250)
	self:AddRecipeFlags(12596, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeTrainer(12596, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Deadly Scope -- 12597
	AddRecipe(12597, 210, 10546, Q.COMMON, V.ORIG, 210, 230, 240, 250)
	self:AddRecipeFlags(12597, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(12597, 8679, 9544)

	-- Mithril Casing -- 12599
	AddRecipe(12599, 215, 10561, Q.COMMON, V.ORIG, 215, 215, 235, 255)
	self:AddRecipeFlags(12599, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12599, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Mithril Frag Bomb -- 12603
	AddRecipe(12603, 215, 10514, Q.COMMON, V.ORIG, 215, 215, 235, 255)
	self:AddRecipeFlags(12603, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12603, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Catseye Ultra Goggles -- 12607
	AddRecipe(12607, 220, 10501, Q.UNCOMMON, V.ORIG, 220, 240, 250, 260)
	self:AddRecipeFlags(12607, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.CLOTH)
	self:AddRecipeWorldDrop(12607, "Kalimdor", "Eastern Kingdoms")

	-- Mithril Heavy-bore Rifle -- 12614
	AddRecipe(12614, 220, 10510, Q.UNCOMMON, V.ORIG, 220, 240, 250, 260)
	self:AddRecipeFlags(12614, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.GUN)
	self:AddRecipeWorldDrop(12614, "Kalimdor", "Eastern Kingdoms")

	-- Spellpower Goggles Xtreme -- 12615
	AddRecipe(12615, 225, 10502, Q.COMMON, V.ORIG, 225, 245, 255, 265)
	self:AddRecipeFlags(12615, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(12615, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Parachute Cloak -- 12616
	AddRecipe(12616, 225, 10518, Q.UNCOMMON, V.ORIG, 225, 245, 255, 265)
	self:AddRecipeFlags(12616, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.CLOAK)
	self:AddRecipeWorldDrop(12616, "Kalimdor", "Eastern Kingdoms")

	-- Deepdive Helmet -- 12617
	AddRecipe(12617, 230, 10506, Q.COMMON, V.ORIG, 230, 250, 260, 270)
	self:AddRecipeFlags(12617, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.CLOTH)
	self:AddRecipeVendor(12617, 8678)

	-- Rose Colored Goggles -- 12618
	AddRecipe(12618, 230, 10503, Q.COMMON, V.ORIG, 230, 250, 260, 270)
	self:AddRecipeFlags(12618, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(12618, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Hi-Explosive Bomb -- 12619
	AddRecipe(12619, 235, 10562, Q.COMMON, V.ORIG, 235, 235, 255, 275)
	self:AddRecipeFlags(12619, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12619, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Sniper Scope -- 12620
	AddRecipe(12620, 240, 10548, Q.RARE, V.ORIG, 240, 260, 270, 280)
	self:AddRecipeFlags(12620, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(12620, "Kalimdor", "Eastern Kingdoms")

	-- Mithril Gyro-Shot -- 12621
	AddRecipe(12621, 245, 10513, Q.COMMON, V.ORIG, 245, 245, 265, 285)
	self:AddRecipeFlags(12621, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeTrainer(12621, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Green Lens -- 12622
	AddRecipe(12622, 245, 10504, Q.COMMON, V.ORIG, 245, 265, 275, 285)
	self:AddRecipeFlags(12622, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(12622, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Mithril Mechanical Dragonling -- 12624
	AddRecipe(12624, 250, 10576, Q.COMMON, V.ORIG, 250, 270, 280, 290)
	self:AddRecipeFlags(12624, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeVendor(12624, 2688)

	-- Goblin Rocket Fuel Recipe -- 12715
	AddRecipe(12715, 205, 10644, Q.COMMON, V.ORIG, 205, 205, 205, 205, 20222)
	self:AddRecipeFlags(12715, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12715, 8126, 29513)

	-- Goblin Mortar -- 12716
	AddRecipe(12716, 205, 10577, Q.COMMON, V.ORIG, 205, 225, 235, 245, 20222)
	self:AddRecipeFlags(12716, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(12716, 8738, 29513, 8126)

	-- Goblin Mining Helmet -- 12717
	AddRecipe(12717, 205, 10542, Q.COMMON, V.ORIG, 205, 225, 235, 245, 20222)
	self:AddRecipeFlags(12717, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(12717, 8738, 29513, 8126)

	-- Goblin Construction Helmet -- 12718
	AddRecipe(12718, 205, 10543, Q.COMMON, V.ORIG, 205, 225, 235, 245, 20222)
	self:AddRecipeFlags(12718, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(12718, 8738, 29513, 8126)

	-- The Big One -- 12754
	AddRecipe(12754, 235, 10586, Q.COMMON, V.ORIG, 235, 235, 255, 275, 20222)
	self:AddRecipeFlags(12754, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12754, 8738, 29513, 8126)

	-- Goblin Bomb Dispenser -- 12755
	AddRecipe(12755, 230, 10587, Q.COMMON, V.ORIG, 230, 230, 250, 270, 20222)
	self:AddRecipeFlags(12755, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(12755, 8738, 29513, 8126)

	-- Goblin Rocket Helmet -- 12758
	AddRecipe(12758, 245, 10588, Q.COMMON, V.ORIG, 245, 265, 275, 285, 20222)
	self:AddRecipeFlags(12758, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(12758, 8738, 29513, 8126)

	-- Gnomish Death Ray -- 12759
	AddRecipe(12759, 240, 10645, Q.COMMON, V.ORIG, 240, 260, 270, 280, 20219)
	self:AddRecipeFlags(12759, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(12759, 7944, 7406, 29514)

	-- Goblin Sapper Charge -- 12760
	AddRecipe(12760, 205, 10646, Q.COMMON, V.ORIG, 205, 205, 225, 245, 20222)
	self:AddRecipeFlags(12760, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12760, 8126, 29513)

	-- Inlaid Mithril Cylinder Plans -- 12895
	AddRecipe(12895, 205, 10713, Q.COMMON, V.ORIG, 205, 205, 205, 205, 20219)
	self:AddRecipeFlags(12895, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(12895, 7944, 7406, 29514)

	-- Gnomish Goggles -- 12897
	AddRecipe(12897, 210, 10545, Q.COMMON, V.ORIG, 210, 230, 240, 250, 20219)
	self:AddRecipeFlags(12897, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(12897, 7944, 7406, 29514)

	-- Gnomish Shrink Ray -- 12899
	AddRecipe(12899, 205, 10716, Q.COMMON, V.ORIG, 205, 225, 235, 245, 20219)
	self:AddRecipeFlags(12899, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TRINKET)
	self:AddRecipeTrainer(12899, 7944, 7406, 29514)

	-- Gnomish Net-o-Matic Projector -- 12902
	AddRecipe(12902, 210, 10720, Q.COMMON, V.ORIG, 210, 230, 240, 250, 20219)
	self:AddRecipeFlags(12902, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(12902, 7944, 7406, 29514)

	-- Gnomish Harm Prevention Belt -- 12903
	AddRecipe(12903, 215, 10721, Q.COMMON, V.ORIG, 215, 235, 245, 255, 20219)
	self:AddRecipeFlags(12903, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(12903, 7944, 7406, 29514)

	-- Gnomish Rocket Boots -- 12905
	AddRecipe(12905, 225, 10724, Q.COMMON, V.ORIG, 225, 245, 255, 265, 20219)
	self:AddRecipeFlags(12905, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(12905, 7944, 7406, 29514)

	-- Gnomish Battle Chicken -- 12906
	AddRecipe(12906, 230, 10725, Q.COMMON, V.ORIG, 230, 250, 260, 270, 20219)
	self:AddRecipeFlags(12906, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(12906, 7944, 7406, 29514)

	-- Gnomish Mind Control Cap -- 12907
	AddRecipe(12907, 235, 10726, Q.COMMON, V.ORIG, 235, 255, 265, 275, 20219)
	self:AddRecipeFlags(12907, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(12907, 7944, 7406, 29514)

	-- Goblin Dragon Gun -- 12908
	AddRecipe(12908, 240, 10727, Q.COMMON, V.ORIG, 240, 260, 270, 280, 20222)
	self:AddRecipeFlags(12908, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(12908, 8738, 29513, 8126)

	-- The Mortar: Reloaded -- 13240
	AddRecipe(13240, 205, 10577, Q.COMMON, V.ORIG, 205, 205, 205, 205, 20222)
	self:AddRecipeFlags(13240, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(13240, 8126, 8738)

	-- Mechanical Repair Kit -- 15255
	AddRecipe(15255, 200, 11590, Q.COMMON, V.ORIG, 200, 200, 220, 240)
	self:AddRecipeFlags(15255, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(15255, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 33586, 17222, 5518, 11037, 28697, 33611, 8736, 16667, 18775, 26991, 11031, 3290, 5174, 33634, 16726)

	-- Pet Bombling -- 15628
	AddRecipe(15628, 205, 11825, Q.UNCOMMON, V.ORIG, 205, 205, 205, 205)
	self:AddRecipeFlags(15628, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(15628, A.CUSTOM, 16)

	-- Lil' Smoky -- 15633
	AddRecipe(15633, 205, 11826, Q.UNCOMMON, V.ORIG, 205, 205, 205, 205)
	self:AddRecipeFlags(15633, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(15633, A.CUSTOM, 16)

	-- Salt Shaker -- 19567
	AddRecipe(19567, 250, 15846, Q.COMMON, V.ORIG, 250, 270, 280, 290)
	self:AddRecipeFlags(19567, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(19567, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Dense Blasting Powder -- 19788
	AddRecipe(19788, 250, 15992, Q.COMMON, V.ORIG, 250, 250, 255, 260)
	self:AddRecipeFlags(19788, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(19788, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Thorium Grenade -- 19790
	AddRecipe(19790, 260, 15993, Q.COMMON, V.ORIG, 260, 280, 290, 300)
	self:AddRecipeFlags(19790, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE)
	self:AddRecipeTrainer(19790, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Thorium Widget -- 19791
	AddRecipe(19791, 260, 15994, Q.COMMON, V.ORIG, 260, 280, 290, 300)
	self:AddRecipeFlags(19791, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE)
	self:AddRecipeTrainer(19791, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Thorium Rifle -- 19792
	AddRecipe(19792, 260, 15995, Q.COMMON, V.ORIG, 260, 280, 290, 300)
	self:AddRecipeFlags(19792, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE, F.DPS, F.GUN)
	self:AddRecipeTrainer(19792, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Lifelike Mechanical Toad -- 19793
	AddRecipe(19793, 265, 15996, Q.UNCOMMON, V.ORIG, 265, 285, 295, 305)
	self:AddRecipeFlags(19793, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(19793, "Kalimdor", "Eastern Kingdoms")

	-- Spellpower Goggles Xtreme Plus -- 19794
	AddRecipe(19794, 270, 15999, Q.COMMON, V.ORIG, 270, 290, 300, 310)
	self:AddRecipeFlags(19794, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(19794, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Thorium Tube -- 19795
	AddRecipe(19795, 275, 16000, Q.COMMON, V.ORIG, 275, 295, 305, 315)
	self:AddRecipeFlags(19795, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE)
	self:AddRecipeTrainer(19795, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Dark Iron Rifle -- 19796
	AddRecipe(19796, 275, 16004, Q.UNCOMMON, V.ORIG, 275, 295, 305, 315)
	self:AddRecipeFlags(19796, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.GUN)
	self:AddRecipeMobDrop(19796, 8897)

	-- Dark Iron Bomb -- 19799
	AddRecipe(19799, 285, 16005, Q.UNCOMMON, V.ORIG, 285, 305, 315, 325)
	self:AddRecipeFlags(19799, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(19799, 8920)

	-- Thorium Shells -- 19800
	AddRecipe(19800, 285, 15997, Q.COMMON, V.ORIG, 285, 295, 300, 305)
	self:AddRecipeFlags(19800, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE, F.AMMO)
	self:AddRecipeTrainer(19800, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Masterwork Target Dummy -- 19814
	AddRecipe(19814, 275, 16023, Q.COMMON, V.ORIG, 275, 295, 305, 315)
	self:AddRecipeFlags(19814, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(19814, 11185)

	-- Delicate Arcanite Converter -- 19815
	AddRecipe(19815, 285, 16006, Q.COMMON, V.ORIG, 285, 305, 315, 325)
	self:AddRecipeFlags(19815, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(19815, 11185)

	-- Voice Amplification Modulator -- 19819
	AddRecipe(19819, 290, 16009, Q.UNCOMMON, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(19819, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.NECK)
	self:AddRecipeMobDrop(19819, 10426)

	-- Master Engineer's Goggles -- 19825
	AddRecipe(19825, 290, 16008, Q.COMMON, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(19825, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(19825, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Arcanite Dragonling -- 19830
	AddRecipe(19830, 300, 16022, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(19830, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeMobDrop(19830, 7437)

	-- Arcane Bomb -- 19831
	AddRecipe(19831, 300, 16040, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(19831, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(19831, "Kalimdor", "Eastern Kingdoms")

	-- Flawless Arcanite Rifle -- 19833
	AddRecipe(19833, 300, 16007, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(19833, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOE, F.DPS, F.GUN)
	self:AddRecipeMobDrop(19833, 8561)

	-- Snowmaster 9000 -- 21940
	AddRecipe(21940, 190, 17716, Q.UNCOMMON, V.ORIG, 190, 190, 210, 230)
	self:AddRecipeFlags(21940, F.ALLIANCE, F.HORDE, F.SEASONAL, F.IBOE, F.RBOE)
	self:AddRecipeAcquire(21940, A.SEASONAL, 1)

	-- Field Repair Bot 74A -- 22704
	AddRecipe(22704, 300, 18232, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(22704, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOP)
	self:AddRecipeAcquire(22704, A.CUSTOM, 17)

	-- Biznicks 247x128 Accurascope -- 22793
	AddRecipe(22793, 300, 18283, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(22793, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeAcquire(22793, A.CUSTOM, 26)

	-- Core Marksman Rifle -- 22795
	AddRecipe(22795, 300, 18282, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(22795, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.DPS, F.GUN)
	self:AddRecipeAcquire(22795, A.CUSTOM, 26)

	-- Force Reactive Disk -- 22797
	AddRecipe(22797, 300, 18168, Q.RARE, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(22797, F.ALLIANCE, F.HORDE, F.RAID, F.IBOE, F.RBOP, F.TANK, F.SHIELD, F.ONE_HAND)
	self:AddRecipeAcquire(22797, A.CUSTOM, 26)

	-- Red Firework -- 23066
	AddRecipe(23066, 150, 9318, Q.COMMON, V.ORIG, 150, 150, 162, 175)
	self:AddRecipeFlags(23066, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(23066, 3413)

	-- Blue Firework -- 23067
	AddRecipe(23067, 150, 9312, Q.COMMON, V.ORIG, 150, 150, 162, 175)
	self:AddRecipeFlags(23067, F.ALLIANCE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(23067, 5175)

	-- Green Firework -- 23068
	AddRecipe(23068, 150, 9313, Q.COMMON, V.ORIG, 150, 150, 162, 175)
	self:AddRecipeFlags(23068, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(23068, 2838, 3495)

	-- EZ-Thro Dynamite II -- 23069
	AddRecipe(23069, 200, 18588, Q.COMMON, V.ORIG, 200, 200, 210, 220)
	self:AddRecipeFlags(23069, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(23069, 8131)

	-- Dense Dynamite -- 23070
	AddRecipe(23070, 250, 18641, Q.COMMON, V.ORIG, 250, 250, 260, 270)
	self:AddRecipeFlags(23070, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(23070, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Truesilver Transformer -- 23071
	AddRecipe(23071, 260, 18631, Q.COMMON, V.ORIG, 260, 270, 275, 280)
	self:AddRecipeFlags(23071, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOE)
	self:AddRecipeTrainer(23071, 11017, 11025, 17634, 3494, 1702, 25277, 18752, 17637, 1676, 26907, 19576, 26955, 3290, 17222, 5518, 11037, 33586, 33611, 8736, 16667, 18775, 26991, 11031, 28697, 5174, 33634, 16726)

	-- Gyrofreeze Ice Reflector -- 23077
	AddRecipe(23077, 260, 18634, Q.COMMON, V.ORIG, 260, 280, 290, 300)
	self:AddRecipeFlags(23077, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeVendor(23077, 11185)

	-- Goblin Jumper Cables XL -- 23078
	AddRecipe(23078, 265, 18587, Q.UNCOMMON, V.ORIG, 265, 285, 295, 305, 20222)
	self:AddRecipeFlags(23078, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(23078, 9499)

	-- Major Recombobulator -- 23079
	AddRecipe(23079, 275, 18637, Q.UNCOMMON, V.ORIG, 275, 285, 290, 295)
	self:AddRecipeFlags(23079, F.ALLIANCE, F.HORDE, F.INSTANCE, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeAcquire(23079, A.CUSTOM, 32)

	-- Powerful Seaforium Charge -- 23080
	AddRecipe(23080, 275, 18594, Q.COMMON, V.ORIG, 275, 275, 285, 295)
	self:AddRecipeFlags(23080, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(23080, 11185)

	-- Hyper-Radiant Flame Reflector -- 23081
	AddRecipe(23081, 290, 18638, Q.UNCOMMON, V.ORIG, 290, 310, 320, 330)
	self:AddRecipeFlags(23081, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeMobDrop(23081, 10264)

	-- Ultra-Flash Shadow Reflector -- 23082
	AddRecipe(23082, 300, 18639, Q.UNCOMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(23082, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE, F.TRINKET)
	self:AddRecipeMobDrop(23082, 10426)

	-- Gnomish Alarm-o-Bot -- 23096
	AddRecipe(23096, 265, 18645, Q.UNCOMMON, V.ORIG, 265, 275, 280, 285, 20219)
	self:AddRecipeFlags(23096, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(23096, 8920)

	-- World Enlarger -- 23129
	AddRecipe(23129, 260, 18660, Q.UNCOMMON, V.ORIG, 260, 260, 265, 270, 20219)
	self:AddRecipeFlags(23129, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOE)
	self:AddRecipeMobDrop(23129, 8920)

	-- Dimensional Ripper - Everlook -- 23486
	AddRecipe(23486, 260, 18984, Q.COMMON, V.ORIG, 260, 285, 295, 305, 20222)
	self:AddRecipeFlags(23486, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(23486, 14742)

	-- Ultrasafe Transporter - Gadgetzan -- 23489
	AddRecipe(23489, 260, 18986, Q.COMMON, V.ORIG, 260, 285, 295, 305, 20219)
	self:AddRecipeFlags(23489, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(23489, 14743)

	-- Snake Burst Firework -- 23507
	AddRecipe(23507, 250, 19026, Q.COMMON, V.ORIG, 250, 250, 260, 270)
	self:AddRecipeFlags(23507, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP)
	self:AddRecipeVendor(23507, 14637)

	-- Bloodvine Goggles -- 24356
	AddRecipe(24356, 300, 19999, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24356, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.CLOTH, F.ZANDALAR)
	self:AddRecipeRepVendor(24356, FAC.ZANDALAR, REP.HONORED, 14921)

	-- Bloodvine Lens -- 24357
	AddRecipe(24357, 300, 19998, Q.COMMON, V.ORIG, 300, 320, 330, 340)
	self:AddRecipeFlags(24357, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.LEATHER, F.ZANDALAR)
	self:AddRecipeRepVendor(24357, FAC.ZANDALAR, REP.FRIENDLY, 14921)

	-- Tranquil Mechanical Yeti -- 26011
	AddRecipe(26011, 250, 21277, Q.COMMON, V.ORIG, 250, 320, 330, 340)
	self:AddRecipeFlags(26011, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP)
	self:AddRecipeQuest(26011, 8798)

	-- Small Blue Rocket -- 26416
	AddRecipe(26416, 125, 21558, Q.UNCOMMON, V.ORIG, 125, 125, 137, 150)
	self:AddRecipeFlags(26416, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26416, 15909)
	self:AddRecipeAcquire(26416, A.SEASONAL, 2)

	-- Small Green Rocket -- 26417
	AddRecipe(26417, 125, 21559, Q.UNCOMMON, V.ORIG, 125, 125, 137, 150)
	self:AddRecipeFlags(26417, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26417, 15909)
	self:AddRecipeAcquire(26417, A.SEASONAL, 2)

	-- Small Red Rocket -- 26418
	AddRecipe(26418, 125, 21557, Q.UNCOMMON, V.ORIG, 125, 125, 137, 150)
	self:AddRecipeFlags(26418, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26418, 15909)
	self:AddRecipeAcquire(26418, A.SEASONAL, 2)

	-- Large Blue Rocket -- 26420
	AddRecipe(26420, 175, 21589, Q.UNCOMMON, V.ORIG, 175, 175, 187, 200)
	self:AddRecipeFlags(26420, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26420, 15909)
	self:AddRecipeAcquire(26420, A.SEASONAL, 2)

	-- Large Green Rocket -- 26421
	AddRecipe(26421, 175, 21590, Q.UNCOMMON, V.ORIG, 175, 175, 187, 200)
	self:AddRecipeFlags(26421, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26421, 15909)
	self:AddRecipeAcquire(26421, A.SEASONAL, 2)

	-- Large Red Rocket -- 26422
	AddRecipe(26422, 175, 21592, Q.UNCOMMON, V.ORIG, 175, 175, 187, 200)
	self:AddRecipeFlags(26422, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26422, 15909)
	self:AddRecipeAcquire(26422, A.SEASONAL, 2)

	-- Blue Rocket Cluster -- 26423
	AddRecipe(26423, 225, 21571, Q.UNCOMMON, V.ORIG, 225, 225, 237, 250)
	self:AddRecipeFlags(26423, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26423, 15909)
	self:AddRecipeAcquire(26423, A.SEASONAL, 2)

	-- Green Rocket Cluster -- 26424
	AddRecipe(26424, 225, 21574, Q.UNCOMMON, V.ORIG, 225, 225, 237, 250)
	self:AddRecipeFlags(26424, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26424, 15909)
	self:AddRecipeAcquire(26424, A.SEASONAL, 2)

	-- Red Rocket Cluster -- 26425
	AddRecipe(26425, 225, 21576, Q.UNCOMMON, V.ORIG, 225, 225, 237, 250)
	self:AddRecipeFlags(26425, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26425, 15909)
	self:AddRecipeAcquire(26425, A.SEASONAL, 2)

	-- Large Blue Rocket Cluster -- 26426
	AddRecipe(26426, 275, 21714, Q.UNCOMMON, V.ORIG, 275, 275, 280, 285)
	self:AddRecipeFlags(26426, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26426, 15909)
	self:AddRecipeAcquire(26426, A.SEASONAL, 2)

	-- Large Green Rocket Cluster -- 26427
	AddRecipe(26427, 275, 21716, Q.UNCOMMON, V.ORIG, 275, 275, 280, 285)
	self:AddRecipeFlags(26427, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26427, 15909)
	self:AddRecipeAcquire(26427, A.SEASONAL, 2)

	-- Large Red Rocket Cluster -- 26428
	AddRecipe(26428, 275, 21718, Q.UNCOMMON, V.ORIG, 275, 275, 280, 285)
	self:AddRecipeFlags(26428, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26428, 15909)
	self:AddRecipeAcquire(26428, A.SEASONAL, 2)

	-- Firework Launcher -- 26442
	AddRecipe(26442, 225, 21569, Q.UNCOMMON, V.ORIG, 225, 245, 255, 265)
	self:AddRecipeFlags(26442, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26442, 15909)
	self:AddRecipeAcquire(26442, A.SEASONAL, 2)

	-- Firework Cluster Launcher -- 26443
	AddRecipe(26443, 275, 21570, Q.UNCOMMON, V.ORIG, 275, 295, 305, 315)
	self:AddRecipeFlags(26443, F.ALLIANCE, F.HORDE, F.VENDOR, F.SEASONAL, F.IBOE, F.RBOP)
	self:AddRecipeVendor(26443, 15909)
	self:AddRecipeAcquire(26443, A.SEASONAL, 2)

	-- Steam Tonk Controller -- 28327
	AddRecipe(28327, 275, 22728, Q.COMMON, V.ORIG, 275, 275, 280, 285)
	self:AddRecipeFlags(28327, F.ALLIANCE, F.HORDE, F.VENDOR, F.QUEST, F.IBOE, F.RBOP)
	self:AddRecipeVendor(28327, 3413, 5175)
	self:AddRecipeQuest(28327, 9249)

	-- Elemental Blasting Powder -- 30303
	AddRecipe(30303, 300, 23781, Q.COMMON, V.TBC, 300, 300, 310, 320)
	self:AddRecipeFlags(30303, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30303, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Fel Iron Casing -- 30304
	AddRecipe(30304, 300, 23782, Q.COMMON, V.TBC, 300, 300, 310, 320)
	self:AddRecipeFlags(30304, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30304, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Handful of Fel Iron Bolts -- 30305
	AddRecipe(30305, 300, 23783, Q.COMMON, V.TBC, 300, 300, 305, 310)
	self:AddRecipeFlags(30305, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30305, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Adamantite Frame -- 30306
	AddRecipe(30306, 325, 23784, Q.COMMON, V.TBC, 325, 325, 330, 335)
	self:AddRecipeFlags(30306, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30306, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Hardened Adamantite Tube -- 30307
	AddRecipe(30307, 340, 23785, Q.COMMON, V.TBC, 340, 350, 360, 370)
	self:AddRecipeFlags(30307, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30307, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Khorium Power Core -- 30308
	AddRecipe(30308, 340, 23786, Q.COMMON, V.TBC, 340, 350, 360, 370)
	self:AddRecipeFlags(30308, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30308, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Felsteel Stabilizer -- 30309
	AddRecipe(30309, 340, 23787, Q.COMMON, V.TBC, 340, 350, 360, 370)
	self:AddRecipeFlags(30309, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30309, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Fel Iron Bomb -- 30310
	AddRecipe(30310, 300, 23736, Q.COMMON, V.TBC, 300, 320, 330, 340)
	self:AddRecipeFlags(30310, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30310, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Adamantite Grenade -- 30311
	AddRecipe(30311, 325, 23737, Q.COMMON, V.TBC, 325, 335, 345, 355)
	self:AddRecipeFlags(30311, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30311, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Fel Iron Musket -- 30312
	AddRecipe(30312, 320, 23742, Q.COMMON, V.TBC, 320, 330, 340, 350)
	self:AddRecipeFlags(30312, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.GUN)
	self:AddRecipeTrainer(30312, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Adamantite Rifle -- 30313
	AddRecipe(30313, 350, 23746, Q.COMMON, V.TBC, 350, 360, 370, 380)
	self:AddRecipeFlags(30313, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.DPS, F.GUN)
	self:AddRecipeVendor(30313, 16657, 19661, 16782)

	-- Felsteel Boomstick -- 30314
	AddRecipe(30314, 360, 23747, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(30314, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.GUN)
	self:AddRecipeMobDrop(30314, 19960)

	-- Ornate Khorium Rifle -- 30315
	AddRecipe(30315, 375, 23748, Q.RARE, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(30315, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.DPS, F.GUN)
	self:AddRecipeWorldDrop(30315, "Outland")

	-- Cogspinner Goggles -- 30316
	AddRecipe(30316, 340, 23758, Q.COMMON, V.TBC, 340, 350, 360, 370)
	self:AddRecipeFlags(30316, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.LEATHER)
	self:AddRecipeVendor(30316, 18775, 19836)

	-- Power Amplification Goggles -- 30317
	AddRecipe(30317, 340, 23761, Q.RARE, V.TBC, 340, 350, 360, 370)
	self:AddRecipeFlags(30317, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeWorldDrop(30317, "Outland")

	-- Ultra-Spectropic Detection Goggles -- 30318
	AddRecipe(30318, 350, 23762, Q.COMMON, V.TBC, 350, 360, 370, 380)
	self:AddRecipeFlags(30318, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.CLOTH)
	self:AddRecipeVendor(30318, 18775, 19383)

	-- Hyper-Vision Goggles -- 30325
	AddRecipe(30325, 360, 23763, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(30325, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.LEATHER)
	self:AddRecipeMobDrop(30325, 19755)

	-- Adamantite Scope -- 30329
	AddRecipe(30329, 335, 23764, Q.COMMON, V.TBC, 335, 345, 355, 365)
	self:AddRecipeFlags(30329, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(30329, 19351, 19836)

	-- Khorium Scope -- 30332
	AddRecipe(30332, 360, 23765, Q.RARE, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(30332, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(30332, 20207)

	-- Stabilized Eternium Scope -- 30334
	AddRecipe(30334, 375, 23766, Q.RARE, V.TBC, 375, 385, 395, 405)
	self:AddRecipeFlags(30334, F.ALLIANCE, F.HORDE, F.RAID, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(30334, 16152)

	-- Crashin' Thrashin' Robot -- 30337
	AddRecipe(30337, 325, 23767, Q.UNCOMMON, V.TBC, 325, 335, 345, 355)
	self:AddRecipeFlags(30337, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(30337, "Outland")

	-- White Smoke Flare -- 30341
	AddRecipe(30341, 335, 23768, Q.COMMON, V.TBC, 335, 335, 345, 355)
	self:AddRecipeFlags(30341, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(30341, 16657, 18484, 19383, 16782)

	-- Green Smoke Flare -- 30344
	AddRecipe(30344, 335, 23771, Q.COMMON, V.TBC, 335, 335, 345, 355)
	self:AddRecipeFlags(30344, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.CENARION_EXPEDITION)
	self:AddRecipeRepVendor(30344, FAC.CENARION_EXPEDITION, REP.FRIENDLY, 17904)

	-- Fel Iron Shells -- 30346
	AddRecipe(30346, 310, 23772, Q.COMMON, V.TBC, 310, 310, 320, 330)
	self:AddRecipeFlags(30346, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeTrainer(30346, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Adamantite Shell Machine -- 30347
	AddRecipe(30347, 335, 34504, Q.COMMON, V.TBC, 335, 335, 345, 355)
	self:AddRecipeFlags(30347, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE, F.AMMO)
	self:AddRecipeVendor(30347, 16657, 16782, 18484)

	-- Fel Iron Toolbox -- 30348
	AddRecipe(30348, 325, 23774, Q.COMMON, V.TBC, 325, 325, 335, 345)
	self:AddRecipeFlags(30348, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(30348, 16657, 16782, 18484)

	-- Titanium Toolbox -- 30349
	AddRecipe(30349, 405, 23775, Q.COMMON, V.WOTLK, 405, 425, 432, 440)
	self:AddRecipeFlags(30349, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(30349, 28722)

	-- Elemental Seaforium Charge -- 30547
	AddRecipe(30547, 350, 23819, Q.COMMON, V.TBC, 350, 350, 355, 360)
	self:AddRecipeFlags(30547, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.CONSORTIUM)
	self:AddRecipeRepVendor(30547, FAC.CONSORTIUM, REP.REVERED, 20242, 23007)

	-- Zapthrottle Mote Extractor -- 30548
	AddRecipe(30548, 305, 23821, Q.COMMON, V.TBC, 305, 305, 315, 325)
	self:AddRecipeFlags(30548, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP)
	self:AddRecipeQuest(30548, 9635, 9636)

	-- Healing Potion Injector -- 30551
	AddRecipe(30551, 330, 33092, Q.RARE, V.TBC, 330, 330, 340, 350)
	self:AddRecipeFlags(30551, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(30551, 24664)

	-- Mana Potion Injector -- 30552
	AddRecipe(30552, 345, 33093, Q.RARE, V.TBC, 345, 345, 355, 365)
	self:AddRecipeFlags(30552, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(30552, 24664)

	-- Rocket Boots Xtreme -- 30556
	AddRecipe(30556, 355, 23824, Q.RARE, V.TBC, 355, 365, 375, 385)
	self:AddRecipeFlags(30556, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.DPS, F.LEATHER)
	self:AddRecipeMobDrop(30556, 17796)

	-- The Bigger One -- 30558
	AddRecipe(30558, 325, 23826, Q.COMMON, V.TBC, 325, 325, 335, 345, 20222)
	self:AddRecipeFlags(30558, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30558, 8738, 29513, 8126)

	-- Super Sapper Charge -- 30560
	AddRecipe(30560, 340, 23827, Q.COMMON, V.TBC, 340, 340, 350, 360, 20222)
	self:AddRecipeFlags(30560, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30560, 8738, 29513, 8126)

	-- Goblin Rocket Launcher -- 30563
	AddRecipe(30563, 350, 23836, Q.COMMON, V.TBC, 350, 360, 370, 380, 20222)
	self:AddRecipeFlags(30563, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(30563, 8738, 29513, 8126)

	-- Foreman's Enchanted Helmet -- 30565
	AddRecipe(30565, 375, 23838, Q.COMMON, V.TBC, 375, 375, 385, 395, 20222)
	self:AddRecipeFlags(30565, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(30565, 8738, 29513, 8126)

	-- Foreman's Reinforced Helmet -- 30566
	AddRecipe(30566, 375, 23839, Q.COMMON, V.TBC, 375, 375, 385, 395, 20222)
	self:AddRecipeFlags(30566, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.MAIL)
	self:AddRecipeTrainer(30566, 8738, 29513, 8126)

	-- Gnomish Flame Turret -- 30568
	AddRecipe(30568, 325, 23841, Q.COMMON, V.TBC, 325, 335, 345, 355, 20219)
	self:AddRecipeFlags(30568, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(30568, 7944, 7406, 29514)

	-- Gnomish Poultryizer -- 30569
	AddRecipe(30569, 340, 23835, Q.COMMON, V.TBC, 340, 360, 370, 380, 20219)
	self:AddRecipeFlags(30569, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(30569, 7944, 7406, 29514)

	-- Nigh-Invulnerability Belt -- 30570
	AddRecipe(30570, 350, 23825, Q.COMMON, V.TBC, 350, 360, 370, 380, 20219)
	self:AddRecipeFlags(30570, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(30570, 7944, 7406, 29514)

	-- Gnomish Power Goggles -- 30574
	AddRecipe(30574, 375, 23828, Q.COMMON, V.TBC, 375, 375, 385, 395, 20219)
	self:AddRecipeFlags(30574, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(30574, 7944, 7406, 29514)

	-- Gnomish Battle Goggles -- 30575
	AddRecipe(30575, 375, 23829, Q.COMMON, V.TBC, 375, 375, 385, 395, 20219)
	self:AddRecipeFlags(30575, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.LEATHER)
	self:AddRecipeTrainer(30575, 7944, 7406, 29514)

	-- Purple Smoke Flare -- 32814
	AddRecipe(32814, 335, 25886, Q.UNCOMMON, V.TBC, 335, 335, 345, 355)
	self:AddRecipeFlags(32814, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOE, F.RBOE)
	self:AddRecipeWorldDrop(32814, "Outland")

	-- Dimensional Ripper - Area 52 -- 36954
	AddRecipe(36954, 350, 30542, Q.COMMON, V.TBC, 350, 350, 360, 370, 20222)
	self:AddRecipeFlags(36954, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(36954, 21493)

	-- Ultrasafe Transporter - Toshley's Station -- 36955
	AddRecipe(36955, 350, 30544, Q.COMMON, V.TBC, 350, 350, 360, 370, 20219)
	self:AddRecipeFlags(36955, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(36955, 21494)

	-- Fused Wiring -- 39895
	AddRecipe(39895, 275, 7191, Q.COMMON, V.TBC, 275, 275, 280, 285)
	self:AddRecipeFlags(39895, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOE)
	self:AddRecipeVendor(39895, 11185, 19661)

	-- Icy Blasting Primers -- 39971
	AddRecipe(39971, 335, 32423, Q.COMMON, V.TBC, 335, 335, 340, 345)
	self:AddRecipeFlags(39971, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(39971, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Frost Grenades -- 39973
	AddRecipe(39973, 335, 32413, Q.COMMON, V.TBC, 335, 345, 355, 365)
	self:AddRecipeFlags(39973, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(39973, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Furious Gizmatic Goggles -- 40274
	AddRecipe(40274, 350, 32461, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(40274, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.WARRIOR, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(40274, 18775, 26955, 33586, 17637, 19576, 17634, 28697, 25277, 18752)

	-- Gyro-balanced Khorium Destroyer -- 41307
	AddRecipe(41307, 375, 32756, Q.COMMON, V.TBC, 375, 375, 392, 410)
	self:AddRecipeFlags(41307, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.GUN)
	self:AddRecipeTrainer(41307, 18775, 18752, 26955, 33586, 17634, 17637, 19576, 28697, 33611, 33634, 25277, 26991, 26907)

	-- Justicebringer 2000 Specs -- 41311
	AddRecipe(41311, 350, 32472, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41311, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOP, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(41311, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Tankatronic Goggles -- 41312
	AddRecipe(41312, 350, 32473, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41312, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.WARRIOR, F.IBOP, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeTrainer(41312, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Surestrike Goggles v2.0 -- 41314
	AddRecipe(41314, 350, 32474, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41314, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(41314, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Gadgetstorm Goggles -- 41315
	AddRecipe(41315, 350, 32476, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41315, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(41315, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Living Replicator Specs -- 41316
	AddRecipe(41316, 350, 32475, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41316, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(41316, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Deathblow X11 Goggles -- 41317
	AddRecipe(41317, 350, 32478, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41317, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.ROGUE, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(41317, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Wonderheal XT40 Shades -- 41318
	AddRecipe(41318, 350, 32479, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41318, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(41318, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Magnified Moon Specs -- 41319
	AddRecipe(41319, 350, 32480, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41319, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(41319, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Destruction Holo-gogs -- 41320
	AddRecipe(41320, 350, 32494, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41320, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.PRIEST, F.WARLOCK, F.IBOP, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(41320, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Powerheal 4000 Lens -- 41321
	AddRecipe(41321, 350, 32495, Q.COMMON, V.TBC, 350, 370, 380, 390)
	self:AddRecipeFlags(41321, F.ALLIANCE, F.HORDE, F.TRAINER, F.PRIEST, F.IBOP, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(41321, 18775, 26955, 33586, 17637, 19576, 26907, 17634, 25277, 28697, 26991, 18752)

	-- Adamantite Arrow Maker -- 43676
	AddRecipe(43676, 335, 20475, Q.UNCOMMON, V.TBC, 335, 335, 345, 355)
	self:AddRecipeFlags(43676, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(43676, 19707)

	-- Flying Machine -- 44155
	AddRecipe(44155, 300, 34060, Q.COMMON, V.TBC, 300, 330, 340, 350)
	self:AddRecipeFlags(44155, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(44155, 25277, 28697, 33586, 25099, 26955, 24868)

	-- Turbo-Charged Flying Machine -- 44157
	AddRecipe(44157, 375, 34061, Q.COMMON, V.TBC, 375, 385, 390, 395)
	self:AddRecipeFlags(44157, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(44157, 24868, 25099)

	-- Field Repair Bot 110G -- 44391
	AddRecipe(44391, 360, 34113, Q.UNCOMMON, V.TBC, 360, 370, 380, 390)
	self:AddRecipeFlags(44391, F.ALLIANCE, F.HORDE, F.MOB_DROP, F.IBOE, F.RBOP)
	self:AddRecipeMobDrop(44391, 23385, 23386)

	-- Wonderheal XT68 Shades -- 46106
	AddRecipe(46106, 375, 35183, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46106, F.ALLIANCE, F.HORDE, F.RAID, F.DRUID, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeAcquire(46106, A.CUSTOM, 24)

	-- Justicebringer 3000 Specs -- 46107
	AddRecipe(46107, 375, 35185, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46107, F.ALLIANCE, F.HORDE, F.RAID, F.PALADIN, F.IBOP, F.RBOP, F.PLATE)
	self:AddRecipeAcquire(46107, A.CUSTOM, 24)

	-- Powerheal 9000 Lens -- 46108
	AddRecipe(46108, 375, 35181, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46108, F.ALLIANCE, F.HORDE, F.RAID, F.PRIEST, F.IBOP, F.RBOP, F.CLOTH)
	self:AddRecipeAcquire(46108, A.CUSTOM, 24)

	-- Hyper-Magnified Moon Specs -- 46109
	AddRecipe(46109, 375, 35182, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46109, F.ALLIANCE, F.HORDE, F.RAID, F.DRUID, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeAcquire(46109, A.CUSTOM, 24)

	-- Primal-Attuned Goggles -- 46110
	AddRecipe(46110, 375, 35184, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46110, F.ALLIANCE, F.HORDE, F.RAID, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeAcquire(46110, A.CUSTOM, 24)

	-- Annihilator Holo-Gogs -- 46111
	AddRecipe(46111, 375, 34847, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46111, F.ALLIANCE, F.HORDE, F.RAID, F.MAGE, F.PRIEST, F.WARLOCK, F.IBOP, F.RBOP, F.CLOTH)
	self:AddRecipeAcquire(46111, A.CUSTOM, 24)

	-- Lightning Etched Specs -- 46112
	AddRecipe(46112, 375, 34355, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46112, F.ALLIANCE, F.HORDE, F.RAID, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeAcquire(46112, A.CUSTOM, 24)

	-- Surestrike Goggles v3.0 -- 46113
	AddRecipe(46113, 375, 34356, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46113, F.ALLIANCE, F.HORDE, F.RAID, F.HUNTER, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeAcquire(46113, A.CUSTOM, 24)

	-- Mayhem Projection Goggles -- 46114
	AddRecipe(46114, 375, 34354, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46114, F.ALLIANCE, F.HORDE, F.RAID, F.DK, F.PALADIN, F.WARRIOR, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeAcquire(46114, A.CUSTOM, 24)

	-- Hard Khorium Goggles -- 46115
	AddRecipe(46115, 375, 34357, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46115, F.ALLIANCE, F.HORDE, F.RAID, F.PALADIN, F.WARRIOR, F.IBOP, F.RBOP, F.TANK, F.PLATE)
	self:AddRecipeAcquire(46115, A.CUSTOM, 24)

	-- Quad Deathblow X44 Goggles -- 46116
	AddRecipe(46116, 375, 34353, Q.EPIC, V.TBC, 375, 390, 410, 430)
	self:AddRecipeFlags(46116, F.ALLIANCE, F.HORDE, F.RAID, F.DRUID, F.ROGUE, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeAcquire(46116, A.CUSTOM, 24)

	-- Rocket Boots Xtreme Lite -- 46697
	AddRecipe(46697, 355, 35581, Q.RARE, V.TBC, 355, 365, 375, 385)
	self:AddRecipeFlags(46697, F.ALLIANCE, F.HORDE, F.INSTANCE, F.MOB_DROP, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeMobDrop(46697, 19219)

	-- Volatile Blasting Trigger -- 53281
	AddRecipe(53281, 350, 39690, Q.COMMON, V.TBC, 350, 366, 375, 385)
	self:AddRecipeFlags(53281, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(53281, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Mark "S" Boomstick -- 54353
	AddRecipe(54353, 400, 39688, Q.COMMON, V.WOTLK, 400, 405, 410, 415)
	self:AddRecipeFlags(54353, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.DPS, F.GUN)
	self:AddRecipeTrainer(54353, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Personal Electromagnetic Pulse Generator -- 54736
	AddRecipe(54736, 390, nil, Q.COMMON, V.WOTLK, 390, 390, 392, 395)
	self:AddRecipeFlags(54736, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(54736, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Frag Belt -- 54793
	AddRecipe(54793, 380, nil, Q.COMMON, V.WOTLK, 380, 380, 382, 385)
	self:AddRecipeFlags(54793, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(54793, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Hand-Mounted Pyro Rocket -- 54998
	AddRecipe(54998, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 402, 405)
	self:AddRecipeFlags(54998, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(54998, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Hyperspeed Accelerators -- 54999
	AddRecipe(54999, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 402, 405)
	self:AddRecipeFlags(54999, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(54999, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Flexweave Underlay -- 55002
	AddRecipe(55002, 380, nil, Q.COMMON, V.WOTLK, 380, 380, 382, 385)
	self:AddRecipeFlags(55002, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(55002, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Nitro Boosts -- 55016
	AddRecipe(55016, 405, nil, Q.COMMON, V.WOTLK, 405, 405, 405, 410)
	self:AddRecipeFlags(55016, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(55016, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Scrapbot Construction Kit -- 55252
	AddRecipe(55252, 415, 40769, Q.COMMON, V.WOTLK, 415, 415, 417, 420)
	self:AddRecipeFlags(55252, F.ALLIANCE, F.HORDE, F.QUEST, F.IBOE, F.RBOP)
	self:AddRecipeQuest(55252, 12889)

	-- Handful of Cobalt Bolts -- 56349
	AddRecipe(56349, 350, 39681, Q.COMMON, V.TBC, 350, 360, 370, 380)
	self:AddRecipeFlags(56349, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56349, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Hammer Pick -- 56459
	AddRecipe(56459, 375, 40892, Q.COMMON, V.TBC, 375, 380, 385, 390)
	self:AddRecipeFlags(56459, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56459, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Cobalt Frag Bomb -- 56460
	AddRecipe(56460, 350, 40771, Q.COMMON, V.TBC, 350, 375, 382, 390)
	self:AddRecipeFlags(56460, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56460, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Bladed Pickaxe -- 56461
	AddRecipe(56461, 375, 40893, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(56461, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56461, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Gnomish Army Knife -- 56462
	AddRecipe(56462, 435, 40772, Q.COMMON, V.WOTLK, 435, 440, 445, 450)
	self:AddRecipeFlags(56462, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56462, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Explosive Decoy -- 56463
	AddRecipe(56463, 375, 40536, Q.COMMON, V.WOTLK, 375, 385, 390, 395)
	self:AddRecipeFlags(56463, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56463, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Overcharged Capacitor -- 56464
	AddRecipe(56464, 375, 39682, Q.COMMON, V.WOTLK, 375, 380, 385, 390)
	self:AddRecipeFlags(56464, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56464, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Mechanized Snow Goggles -- 56465
	AddRecipe(56465, 420, 41112, Q.COMMON, V.WOTLK, 420, 425, 432, 440)
	self:AddRecipeFlags(56465, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.PRIEST, F.WARLOCK, F.IBOE, F.RBOP, F.CLOTH)
	self:AddRecipeTrainer(56465, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Sonic Booster -- 56466
	AddRecipe(56466, 420, 40767, Q.COMMON, V.WOTLK, 420, 435, 440, 445)
	self:AddRecipeFlags(56466, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.TRINKET)
	self:AddRecipeTrainer(56466, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Noise Machine -- 56467
	AddRecipe(56467, 420, 40865, Q.COMMON, V.WOTLK, 420, 435, 440, 445)
	self:AddRecipeFlags(56467, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.HEALER, F.CASTER, F.TRINKET)
	self:AddRecipeTrainer(56467, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Box of Bombs -- 56468
	AddRecipe(56468, 405, 41119, Q.COMMON, V.WOTLK, 405, 410, 415, 420)
	self:AddRecipeFlags(56468, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56468, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Gnomish Lightning Generator -- 56469
	AddRecipe(56469, 425, 41121, Q.COMMON, V.WOTLK, 425, 430, 435, 440)
	self:AddRecipeFlags(56469, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(56469, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Sun Scope -- 56470
	AddRecipe(56470, 425, 41146, Q.COMMON, V.WOTLK, 425, 430, 432, 435)
	self:AddRecipeFlags(56470, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(56470, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Froststeel Tube -- 56471
	AddRecipe(56471, 390, 39683, Q.COMMON, V.WOTLK, 390, 395, 400, 405)
	self:AddRecipeFlags(56471, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56471, 26907, 25277, 26991, 28697, 26955, 33586)

	-- MOLL-E -- 56472
	AddRecipe(56472, 425, 40768, Q.COMMON, V.WOTLK, 425, 430, 432, 435)
	self:AddRecipeFlags(56472, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56472, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Gnomish X-Ray Specs -- 56473
	AddRecipe(56473, 425, 40895, Q.COMMON, V.WOTLK, 425, 430, 435, 440, 20219)
	self:AddRecipeFlags(56473, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56473, 26907, 26955, 29514)

	-- Mammoth Cutters -- 56474
	AddRecipe(56474, 410, 44507, Q.COMMON, V.WOTLK, 410, 410, 415, 420)
	self:AddRecipeFlags(56474, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.AMMO)
	self:AddRecipeTrainer(56474, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Saronite Razorheads -- 56475
	AddRecipe(56475, 415, 44506, Q.COMMON, V.WOTLK, 415, 415, 417, 425)
	self:AddRecipeFlags(56475, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56475, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Healing Injector Kit -- 56476
	AddRecipe(56476, 410, 37567, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(56476, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56476, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Mana Injector Kit -- 56477
	AddRecipe(56477, 415, 42546, Q.COMMON, V.WOTLK, 415, 420, 425, 430)
	self:AddRecipeFlags(56477, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56477, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Heartseeker Scope -- 56478
	AddRecipe(56478, 430, 41167, Q.COMMON, V.WOTLK, 430, 435, 445, 455)
	self:AddRecipeFlags(56478, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS)
	self:AddRecipeTrainer(56478, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Armor Plated Combat Shotgun -- 56479
	AddRecipe(56479, 450, 41168, Q.COMMON, V.WOTLK, 450, 455, 460, 465)
	self:AddRecipeFlags(56479, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TANK, F.GUN)
	self:AddRecipeTrainer(56479, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Armored Titanium Goggles -- 56480
	AddRecipe(56480, 440, 42549, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56480, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.PALADIN, F.WARRIOR, F.IBOP, F.RBOP, F.DPS, F.TANK, F.PLATE)
	self:AddRecipeTrainer(56480, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Weakness Spectralizers -- 56481
	AddRecipe(56481, 440, 42550, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56481, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(56481, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Charged Titanium Specs -- 56483
	AddRecipe(56483, 440, 42552, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56483, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.PALADIN, F.WARRIOR, F.IBOP, F.RBOP, F.DPS, F.PLATE)
	self:AddRecipeTrainer(56483, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Visage Liquification Goggles -- 56484
	AddRecipe(56484, 440, 42553, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56484, F.ALLIANCE, F.HORDE, F.TRAINER, F.MAGE, F.PRIEST, F.WARLOCK, F.IBOP, F.RBOP, F.HEALER, F.CASTER, F.CLOTH)
	self:AddRecipeTrainer(56484, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Greensight Gogs -- 56486
	AddRecipe(56486, 440, 42554, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56486, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.IBOP, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(56486, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Electroflux Sight Enhancers -- 56487
	AddRecipe(56487, 440, 42555, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56487, F.ALLIANCE, F.HORDE, F.TRAINER, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(56487, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Global Thermal Sapper Charge -- 56514
	AddRecipe(56514, 425, 42641, Q.COMMON, V.WOTLK, 425, 425, 430, 435, 20222)
	self:AddRecipeFlags(56514, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(56514, 25277, 29513)

	-- Truesight Ice Blinders -- 56574
	AddRecipe(56574, 440, 42551, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(56574, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.SHAMAN, F.IBOP, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(56574, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Nesingwary 4000 -- 60874
	AddRecipe(60874, 450, 44504, Q.COMMON, V.WOTLK, 450, 455, 460, 465)
	self:AddRecipeFlags(60874, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.DPS, F.GUN)
	self:AddRecipeTrainer(60874, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Diamond-cut Refractor Scope -- 61471
	AddRecipe(61471, 390, 44739, Q.COMMON, V.WOTLK, 390, 400, 407, 415)
	self:AddRecipeFlags(61471, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP)
	self:AddRecipeTrainer(61471, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Mechanized Snow Goggles -- 61481
	AddRecipe(61481, 420, 44742, Q.COMMON, V.WOTLK, 420, 425, 432, 440)
	self:AddRecipeFlags(61481, F.ALLIANCE, F.HORDE, F.TRAINER, F.DRUID, F.ROGUE, F.IBOE, F.RBOP, F.LEATHER)
	self:AddRecipeTrainer(61481, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Mechanized Snow Goggles -- 61482
	AddRecipe(61482, 420, 44742, Q.COMMON, V.WOTLK, 420, 425, 432, 440)
	self:AddRecipeFlags(61482, F.ALLIANCE, F.HORDE, F.TRAINER, F.HUNTER, F.SHAMAN, F.IBOE, F.RBOP, F.MAIL)
	self:AddRecipeTrainer(61482, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Mechanized Snow Goggles -- 61483
	AddRecipe(61483, 420, 44742, Q.COMMON, V.WOTLK, 420, 425, 432, 440)
	self:AddRecipeFlags(61483, F.ALLIANCE, F.HORDE, F.TRAINER, F.DK, F.PALADIN, F.WARRIOR, F.IBOE, F.RBOP, F.PLATE)
	self:AddRecipeTrainer(61483, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Unbreakable Healing Amplifiers -- 62271
	AddRecipe(62271, 440, 44949, Q.COMMON, V.WOTLK, 440, 450, 455, 460)
	self:AddRecipeFlags(62271, F.ALLIANCE, F.HORDE, F.TRAINER, F.PALADIN, F.IBOP, F.RBOP, F.HEALER, F.PLATE)
	self:AddRecipeTrainer(62271, 25277, 26907, 26955)

	-- High-powered Flashlight -- 63750
	AddRecipe(63750, 250, 45631, Q.COMMON, V.WOTLK, 250, 270, 280, 290)
	self:AddRecipeFlags(63750, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOE, F.RBOP, F.TRINKET)
	self:AddRecipeTrainer(63750, 11017, 11025, 17634, 3494, 1702, 25277, 17637, 1676, 26907, 33634, 26955, 16726, 5518, 11037, 33611, 8736, 16667, 3290, 26991, 11031, 28697, 5174, 33586, 17222)

	-- Springy Arachnoweave -- 63765
	AddRecipe(63765, 380, nil, Q.COMMON, V.WOTLK, 380, 380, 382, 385)
	self:AddRecipeFlags(63765, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.HEALER, F.CASTER)
	self:AddRecipeTrainer(63765, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Reticulated Armor Webbing -- 63770
	AddRecipe(63770, 400, nil, Q.COMMON, V.WOTLK, 400, 400, 402, 405)
	self:AddRecipeFlags(63770, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP, F.TANK)
	self:AddRecipeTrainer(63770, 26907, 25277, 26991, 28697, 26955, 33586)

	-- Goblin Beam Welder -- 67326
	AddRecipe(67326, 410, 47828, Q.COMMON, V.WOTLK, 410, 415, 420, 425)
	self:AddRecipeFlags(67326, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP)
	self:AddRecipeTrainer(67326, 33586, 28697, 26955, 25277)

	-- Mind Amplification Dish -- 67839
	AddRecipe(67839, 410, nil, Q.COMMON, V.WOTLK, 410, 410, 415, 420)
	self:AddRecipeFlags(67839, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP)
	self:AddRecipeTrainer(67839, 33586, 28697, 26955, 25277)

	-- Wormhole Generator: Northrend -- 67920
	AddRecipe(67920, 435, 48933, Q.COMMON, V.WOTLK, 435, 450, 455, 460)
	self:AddRecipeFlags(67920, F.ALLIANCE, F.HORDE, F.TRAINER, F.IBOP, F.RBOP)
	self:AddRecipeTrainer(67920, 33586, 28697, 26955, 25277)

	-- Jeeves -- 68067
	AddRecipe(68067, 450, 49050, Q.RARE, V.WOTLK, 450, 480, 485, 490)
	self:AddRecipeFlags(68067, F.ALLIANCE, F.HORDE, F.WORLD_DROP, F.IBOP, F.RBOP)
	self:AddRecipeWorldDrop(68067, "Northrend")

	-- Shatter Rounds -- 72952
	AddRecipe(72952, 450, 52020, Q.EPIC, V.WOTLK, 450, 450, 450, 460, 20222)
	self:AddRecipeFlags(72952, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.AMMO, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(72952, FAC.ASHEN_VERDICT, REP.HONORED, 37687)

	-- Iceblade Arrow -- 72953
	AddRecipe(72953, 450, 52021, Q.EPIC, V.WOTLK, 450, 450, 450, 460, 20219)
	self:AddRecipeFlags(72953, F.ALLIANCE, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.AMMO, F.ASHEN_VERDICT)
	self:AddRecipeRepVendor(72953, FAC.ASHEN_VERDICT, REP.HONORED, 37687)


	-- Some recipes are only availible to specific factions.
	-- We only add the faction specific recipes if the user is part of that faction
	local BFAC = LibStub("LibBabble-Faction-3.0"):GetLookupTable()
	local _, faction = UnitFactionGroup("player")

	if faction == BFAC["Alliance"] then
		-- Mekgineer's Chopper -- 60867
		AddRecipe(60867, 450, 44413, Q.EPIC, V.WOTLK, 450, 480, 485, 490)
		self:AddRecipeFlags(60867, F.ALLIANCE, F.VENDOR, F.IBOE, F.RBOP, F.WRATHCOMMON1)
		self:AddRecipeAcquire(60867, A.REPUTATION, FAC.ALLIANCE_VANGUARD, REP.EXALTED, 32564, A.REPUTATION, FAC.ALLIANCE_VANGUARD, REP.EXALTED, 32773)
	elseif faction == BFAC["Horde"] then

		-- Mechano-hog -- 60866
		AddRecipe(60866, 450, 41508, Q.EPIC, V.WOTLK, 450, 480, 485, 490)
		self:AddRecipeFlags(60866, F.HORDE, F.VENDOR, F.IBOE, F.RBOP, F.WRATHCOMMON1)
		self:AddRecipeRepVendor(60866, FAC.HORDE_EXPEDITION, REP.EXALTED, 32565, 32774)
	end
	return num_recipes
end
