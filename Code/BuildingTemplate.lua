--see Info/LICENSE for license and copyright info

--wrapper logging function for this file
local function Log(...)
        FF.Funcs.LogMessage(CurrentModDef.title, "BuildingTemplate", ...)
end

function OnMsg.ClassesPostprocess()
        Log("Adding BT")
        if not BuildingTemplates.FFHydrolysisReactor then
                PlaceObj('BuildingTemplate', {
                        'comment', "Hydrolysis Reactor",
                        'Group', "Life-Support",
                        'Id', "FFHydrolysisReactor",
                        'template_class', "HydrolysisReactor",
                        'pin_rollover_context', "air",
                        'pin_rollover_hint', T(471070805886, --[[ModItemBuildingTemplate FF-Hydrolysis-Reactor pin_rollover_hint]] "<image UI/Infopanel/left_click.tga 1400> Select"),
                        'pin_rollover_hint_xbox', T(488123886351, --[[ModItemBuildingTemplate FF-Hydrolysis-Reactor pin_rollover_hint_xbox]] "<image UI/PS4/Cross.tga> View"),
                        'construction_cost_Concrete', 5000,
                        'construction_cost_Metals', 4000,
                        'construction_cost_Electronics', 1000,
                        'construction_cost_MachineParts', 2000,
                        'build_points', 1500,
                        'is_tall', true,
                        'dome_forbidden', false,
                        'upgrade1_id', "MOXIE_MagneticFiltering",
                        'upgrade1_display_name', T(396174688820, --[[ModItemBuildingTemplate FF-Hydrolysis-Reactor upgrade1_display_name]] "Magnetic Filtering"),
                        'upgrade1_description', T(936522085574, --[[ModItemBuildingTemplate FF-Hydrolysis-Reactor upgrade1_description]] "+<upgrade1_mul_value_1>% Production."),
                        'upgrade1_icon', "UI/Icons/Upgrades/amplify_01.tga",
                        'upgrade1_mod_label_1', "MOXIE",
                        'upgrade1_mod_prop_id_1', "air_production",
                        'upgrade1_mul_value_1', 50,
                        'upgrade1_upgrade_cost_Concrete', 2000,
                        'upgrade1_upgrade_cost_Polymers', 5000,
                        'upgrade2_id', "HydrolysisReactor_AdvancedReactions",
                        'upgrade2_display_name', FF.Funcs.Translate("Advanced Reactions"),
                        'upgrade2_description', FF.Funcs.Translate("Advanced Reactions allow excess energy from hydrogen atoms to be used in the power grid."),
                        'upgrade2_icon', "UI/Icons/Upgrades/eternal_fusion_01.tga",
                        'upgrade2_mod_prop_id_1', "electricity_production",
                        'upgrade2_add_value_1', 0,
                        'upgrade2_upgrade_cost_Electronics', 2000,
                        'upgrade2_upgrade_cost_PreciousMetals', 1000,
                        'upgrade3_id', "HydrolysisReactor_MoistureFarming",
                        'upgrade3_display_name', FF.Funcs.Translate("Moisture Farming"),
                        'upgrade3_description', FF.Funcs.Translate("Allows reactors to take moisture from the atmosphere to produce more oxygen and power."),
                        'upgrade3_icon', "UI/Icons/Upgrades/hygroscopic_coating_01.tga",
                        'upgrade3_mod_prop_id_1', "air_production",
                        'upgrade3_mul_value_1', 50,
                        'upgrade3_upgrade_cost_Metals', 2000,
                        'upgrade3_upgrade_cost_Polymers', 5000,
                        'maintenance_resource_type', "MachineParts",
                        'maintenance_resource_amount', 2000,
                        'maintenance_threshold_base', 150000,
                        'sight_category', "Additional Buildings",
                        'sight_satisfaction', 5,
                        'display_name', FF.Funcs.Translate("Hydrolysis Reactor"),
                        'display_name_pl', FF.Funcs.Translate("Hydrolysis Reactors"),
                        'description', FF.Funcs.Translate("Extracts Oxygen from Water.<newline><newline>All extractors raise dust resulting in more frequent maintenance for buildings in the grey area."),
                        'build_category', "Life-Support",
                        'display_icon', CurrentModPath.."UI/Icons/electrolyzer.png",
                        'build_pos', 5,
                        'entity', "Moxie",
                        'show_range', true,
                        'encyclopedia_id', "HydrolysisReactor",
                        'encyclopedia_text', FF.Funcs.Translate("Uses the power of science to extract oxygen from water."),
                        'encyclopedia_image', "UI/Encyclopedia/Electrolyzer.tga",
                        'label1', "OutsideBuildings",
                        'label2', "OutsideBuildingsTargets",
                        'palette_color1', "outside_accent_1",
                        'palette_color2', "outside_metal",
                        'palette_color3', "life_base",
                        'demolish_sinking', range(1, 5),
                        'demolish_debris', 85,
                        'disabled_in_environment1', "Asteroid",
                        'air_production', 2000,
                        'water_production', 2000,
                        'exploitation_resource', "Water",
                })
        end
end