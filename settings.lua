--settings

--Choose what recipes to implement
  local WoodtoCoal =
    {
    type = "bool-setting",
    name = "WoodtoCoal",
    setting_type = "startup",
    default_value = true,
    order = "simple_wood_to_coal-a-a"
    }
  local ChesttoCoal =
    {
    type = "bool-setting",
    name = "ChesttoCoal",
    setting_type = "startup",
    default_value = false,
    order = "simple_wood_to_coal-b-a"
    }
  local WoodtoCarbon =
    {
    type = "bool-setting",
    name = "WoodtoCarbon",
    setting_type = "startup",
    default_value = false,
    order = "simple_wood_to_coal-c-a"
    }
  local ChesttoCarbon =
    {
    type = "bool-setting",
    name = "ChesttoCarbon",
    setting_type = "startup",
    default_value = false,
    order = "simple_wood_to_coal-d-a"
    }

--Data extend
  data:extend{WoodtoCoal, ChesttoCoal}
  if mods["space-age"] then
    data:extend{WoodtoCarbon, ChesttoCarbon}
  end
