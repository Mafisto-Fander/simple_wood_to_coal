--recipes

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
    categories = {"smelting"},
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = true
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
    categories = {"smelting"},
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = true
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
    categories = {"smelting"},
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = true
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
    categories = {"smelting"},
    order = "a",
    allow_decomposition = false,
    auto_recycle = false,
    allow_productivity = true,
    enabled = true
    }   
--Settings values
  if settings.startup["WoodtoCoal"].value then
    data:extend{WoodtoCoal}
  end

  if settings.startup["ChesttoCoal"].value then
    data:extend{ChesttoCoal}
  end

  if mods["space-age"] then
    if settings.startup["WoodtoCarbon"].value then
      data:extend{WoodtoCarbon}
    end

    if settings.startup["ChesttoCarbon"].value then
      data:extend{ChesttoCarbon}
    end
  end