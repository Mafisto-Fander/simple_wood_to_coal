data:extend(
{
{
  type = "technology",
  name = "woodtocoal",
  icon = "__wood_to_coal__/graphics/wood-to-coal.png",
  icon_size = 128,
  effects = {
    {
      type = "unlock-recipe",
      recipe = "woodtocoal"
    }
  },
  prerequisites = {},
  research_trigger = {
    count = 25,
    entities = "tree",
    type = "mine-entity"
  },
  order = "d-j"
},
})