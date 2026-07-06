-- Rebalances the vanilla "electromagnetic-science-pack" recipe in place rather than
-- redeclaring it, since data:extend-ing a prototype name that already exists (base game's
-- own recipe) crashes the data stage with a duplicate-name error.
-- Runs in data-updates so it's guaranteed to fire after space-age's data.lua has already
-- created the recipe we're mutating.

local recipe = data.raw.recipe['electromagnetic-science-pack']
if recipe then
    recipe.energy_required = 12
    recipe.allow_productivity = false

    for _, ingredient in pairs(recipe.ingredients) do
        if ingredient.amount then
            ingredient.amount = 2 * ingredient.amount
        end
    end
end
