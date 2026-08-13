--settings

--Add recipe with Space Age
  local RecVal = {"wood-to-coal", "chest-to-coal"}
  if mods["space-age"] then
    table.insert(RecVal, "wood-to-carbon")
    table.insert(RecVal, "chest-to-carbon")
  end

--Сhange which recipe is used
  local WhatRec = 
    {
    type = "string-setting",
    name = "Recipe",
    setting_type = "startup",
    allowed_values = RecVal,
    default_value = "wood-to-coal",
    order = "simple_wood_to_coal-a-a"
    }

--Change whether technology is present 
  local Tech =   
    {
    type = "bool-setting",
    name = "Technology",
    setting_type = "startup",
    default_value = false,
    order = "simple_wood_to_coal-b-a"
    }

--Data extend
  data:extend{WhatRec, Tech}