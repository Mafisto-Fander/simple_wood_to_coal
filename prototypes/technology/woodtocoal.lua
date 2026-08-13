--technology

--Settings values
  local RecName
  if settings.startup["Recipe"].value == "wood-to-coal" then
    RecName = "wood-to-coal"
  elseif settings.startup["Recipe"].value == "chest-to-coal" then
    RecName = "chest-to-coal"
  elseif (settings.startup["Recipe"].value == "wood-to-carbon" and mods["space-age"]) then
    RecName = "wood-to-carbon"
  elseif (settings.startup["Recipe"].value == "chest-to-carbon" and mods["space-age"]) then
    RecName = "chest-to-carbon"
  end
  
--Technology implementation
  local tec = 
    {
      type = "technology",
      name = "woodtocoal",
      icon = "__simple_wood_to_coal__/graphics/wood-to-coal.png",
      icon_size = 128,
      effects = 
      {
        {
        type = "unlock-recipe",
        recipe = RecName
        }
      },
      prerequisites = {},
      research_trigger = 
      {
        type = "craft-item",
        item = "wooden-chest",
        count = 10
      },
      order = "d-j"
    }

--Data extend
  data:extend{tec}

--[[
{
  "tree-plant", 
  "tree-01", 
  "tree-02", 
  "tree-02-red", 
  "tree-03", 
  "tree-04", 
  "tree-05", 
  "tree-06", 
  "tree-06-brown", 
  "tree-07", 
  "tree-08", 
  "tree-08-brown", 
  "tree-08-red", 
  "tree-09", 
  "tree-09-brown", 
  "tree-09-red", 
  "dead-dry-hairy-tree", 
  "dead-grey-trunk", 
  "dead-tree-desert", 
  "dead-hairy-tree", 
  "dry-tree", 
  "funneltrunk", 
  "hairyclubnub", 
  "terflilly", 
  "stingfrond", 
  "boompuff", 
  "cuttlepop", 
  "water-cane"
}
Can't specify several entities in version 2.0.77, only one...
]]--