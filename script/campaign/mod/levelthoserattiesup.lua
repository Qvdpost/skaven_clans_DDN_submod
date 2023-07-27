local function rat_up() 

    local rat_to_grant_exp = {
        ["str_crooktail_viciss"] = true,
        ["bc_nurglitch"] = true,
        ["str_pontifex_sitch"] = true,
        ["clan_vrrtkin_lord_trikstab"] = true,
        ["str_tenscratch"] = true,
        ["str_treecherik_gristl"] = true,
        ["str_poxtooth"] = true,
        ["str_skittice"] = true,
        ["str_gangrous_szik"] = true,
        ["str_skarrik"] = true
    }


    

local exp_to_grant = 21900
core:add_listener("lup", "CharacterCreated", function(context) return rat_to_grant_exp[context:character():character_subtype_key()] and context:character():rank() == 1 end, function(context) cm:add_agent_experience(cm:char_lookup_str(context:character()), exp_to_grant) end, true)

  if cm:is_new_game() then
   
 local faction_list = cm:model():world():faction_list()
for i = 0, faction_list:num_items() - 1 do
  local faction = faction_list:item_at(i)
    for j = 0, faction:character_list():num_items() - 1 do
      local char = faction:character_list():item_at(j)
      if rat_to_grant_exp[char:character_subtype_key()] then
        cm:add_agent_experience(cm:char_lookup_str(char), exp_to_grant)
      end
    end
  end
end
end
cm:add_first_tick_callback(function() rat_up() end);
    

