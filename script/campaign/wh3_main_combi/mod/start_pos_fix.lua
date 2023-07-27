local function not_so_sacred_dog()  
    if cm:is_new_game() && cm:get_faction("wh2_main_skv_clan_gritus"):is_human() == true then
        cm:transfer_region_to_faction("wh3_main_combi_region_plain_of_dogs", "wh2_dlc16_skv_clan_gritus");
        mixer_upgrade_settlement("wh3_main_combi_region_plain_of_dogs", 2)
        mixer_upgrade_building("wh3_main_combi_region_plain_of_dogs", 0, "wh2_dlc14_skv_weaponteams_1", true)
    end;
end;
cm:add_first_tick_callback(function() not_so_sacred_dog() end);

local function unmark_this()  
    if cm:is_new_game() && cm:get_faction("wh2_main_skv_clan_spittel"):is_human() == true then
        cm:transfer_region_to_faction("wh3_main_combi_region_marks_of_the_old_ones", "wh2_main_skv_clan_spittel");
    end;
end;
cm:add_first_tick_callback(function() unmark_this() end);


local function whoiskeith()  
    if cm:is_new_game() && cm:get_faction("wh2_main_skv_clan_septik"):is_human() == true then
        cm:transfer_region_to_faction("wh3_main_combi_region_har_kaldra", "wh3_main_grn_drippin_fangs");
    end;
end;
cm:add_first_tick_callback(function() whoiskeith() end)