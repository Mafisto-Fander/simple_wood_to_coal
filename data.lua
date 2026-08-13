--recipe
  require("prototypes.recipe.woodtocoal")
--technology
  if settings.startup["Technology"].value then
    require("prototypes.technology.woodtocoal")
  end
