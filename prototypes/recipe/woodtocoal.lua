--recipes

  local enabled = true
  if settings.startup["Technology"].value then
    enabled = false
  end

--Wood to coal
  local WoodtoCoal = 
    {
    type = "recipe",
    name = "wood-to-coal",
    ingredients = {{type = "item", name = "wood", amount = 2}},
    results = {{type="item", name="coal", amount=1}},
    energy_required = 3.2,
    subgroup = "raw-material",
    main_product = "coal",
    category = "smelting",
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = enabled
    }
--Wooden chest to coal
  local ChesttoCoal = 
    {
    type = "recipe",
    name = "chest-to-coal",
    ingredients = {{type = "item", name = "wooden-chest", amount = 1}},
    results = {{type="item", name="coal", amount=1}},
    energy_required = 3.2,
    subgroup = "raw-material",
    main_product = "coal",
    category = "smelting",
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = enabled
    }
--Wood to carbon
  local WoodtoCarbon = 
    {
    type = "recipe",
    name = "wood-to-carbon",
    ingredients = {{type = "item", name = "wood", amount = 1}},
    results = {{type="item", name="carbon", amount=1}},
    energy_required = 3.2,
    subgroup = "raw-material",
    main_product = "carbon",
    category = "smelting",
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = enabled
    }
--Wooden chest to carbon
  local ChesttoCarbon = 
    {
    type = "recipe",
    name = "chest-to-carbon",
    ingredients = {{type = "item", name = "wooden-chest", amount = 1}},
    results = {{type="item", name="carbon", amount=2}},
    energy_required = 3.2,
    subgroup = "raw-material",
    main_product = "carbon",
    category = "smelting",
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = enabled
    }   
--Settings values
  --local RecList = {}
    if settings.startup["Recipe"].value == "wood-to-coal" then
      --table.insert(RecList, WoodtoCoal)
      data:extend{WoodtoCoal}
    elseif settings.startup["Recipe"].value == "chest-to-coal" then
      --table.insert(RecList, ChesttoCoal)
      data:extend{ChesttoCoal}
    elseif (settings.startup["Recipe"].value == "wood-to-carbon" and mods["space-age"]) then
      --table.insert(RecList, WoodtoCarbon)
      data:extend{WoodtoCarbon}
    elseif (settings.startup["Recipe"].value == "chest-to-carbon"and mods["space-age"]) then
      --table.insert(RecList, ChesttoCarbon)
      data:extend{ChesttoCarbon}
    end
--Data extend
  --data:extend{RecList}