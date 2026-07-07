-- recipe.lua

local CRAFTABLE_ON_FULGORA = true

local fulgora_only = function()
    if not CRAFTABLE_ON_FULGORA then
        return nil
    end

    return {
        {
            property = 'magnetic-field',
            min = 99,
            max = 99,
        },
    }
end

data:extend({
    --------------------------------------------------------------------------
    -- BOOTSTRAPPING SYSTEM (TRIGGER UNLOCKED)
    --------------------------------------------------------------------------
    -- Crude scavenger glass recipe to bootstrap initial science lines
    {
        type = 'recipe',
        name = 'quartz-glass-plate',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/basic-quartz-glass-plate.png',
        localised_name = { 'recipe-name.quartz-glass-plate' },
        categories = { 'smelting' },
        subgroup = 'fulgora-processes',
        order = 'd[solids]-c[crude-vitrification]',
        enabled = false,
        energy_required = 25,
        ingredients = {
            { type = 'item', name = 'stone', amount = 20 },
        },
        results = {
            { type = 'item', name = 'quartz-glass-plate', amount = 1 },
        },
        allow_productivity = false,
        surface_conditions = fulgora_only(),
    },

    --------------------------------------------------------------------------
    -- TIER 3: INDUSTRIAL INTEGRATION (DREDGING THE SEAS)
    --------------------------------------------------------------------------
    {
        type = 'recipe',
        name = 'ionized-sludge',
        localised_name = { 'recipe-name.ionized-sludge' },
        categories = { 'electromagnetics' },
        subgroup = 'fulgora-processes',
        order = 'a[dredging]-a[sifting]',
        enabled = false,
        energy_required = 2,
        ingredients = { { type = 'fluid', name = 'heavy-oil', amount = 100 } },
        results = { { type = 'fluid', name = 'ionized-sludge', amount = 100 } },
        allow_productivity = false,
        surface_conditions = fulgora_only(),
    },
    {
        type = 'recipe',
        name = 'ionized-sludge-centrifuging',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/ionized-sludge-centrifuging.png',
        categories = { 'oil-processing' },
        subgroup = 'fulgora-processes',
        order = 'a[dredging]-b[centrifuging]',
        enabled = false,
        energy_required = 4,
        ingredients = { { type = 'fluid', name = 'ionized-sludge', amount = 100 } },
        results = {
            { type = 'fluid', name = 'heavy-oil', amount = 40 },
            { type = 'item', name = 'metallic-slurry', amount = 3 },
            { type = 'item', name = 'mineral-silt', amount = 3 },
        },
        allow_productivity = true,
        main_product = 'metallic-slurry',
    },

    --------------------------------------------------------------------------
    -- TIER 4: ORE SEPARATION - THE LEACHING DILEMMA
    --------------------------------------------------------------------------
    {
        type = 'recipe',
        name = 'slurry-acid-leaching',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/slurry-acid-leaching.png',
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'b[leaching]-a[crude-leaching]',
        enabled = false,
        energy_required = 5,
        ingredients = {
            { type = 'item', name = 'metallic-slurry', amount = 20 },
            { type = 'fluid', name = 'heavy-oil', amount = 50 },
        },
        results = {
            { type = 'item', name = 'iron-ore', amount = 2 },
            { type = 'item', name = 'copper-ore', amount = 1 },
        },
        allow_productivity = true,
    },
    {
        type = 'recipe',
        name = 'dirty-electrolyte',
        localised_name = { 'recipe-name.dirty-electrolyte' },
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'b[leaching]-b[catalytic-leaching]',
        enabled = false,
        energy_required = 3,
        ingredients = {
            { type = 'item', name = 'metallic-slurry', amount = 10 },
            { type = 'fluid', name = 'electrolyte', amount = 20 },
        },
        results = {
            { type = 'item', name = 'iron-ore', amount = 8 },
            { type = 'item', name = 'copper-ore', amount = 6 },
            { type = 'fluid', name = 'dirty-electrolyte', amount = 18 },
        },
        allow_productivity = true,
        main_product = 'dirty-electrolyte',
    },
    {
        type = 'recipe',
        name = 'toxic-tar',
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'b[leaching]-c[scrubbing]',
        localised_name = { 'recipe-name.toxic-tar' },
        enabled = false,
        energy_required = 4,
        ingredients = { { type = 'fluid', name = 'dirty-electrolyte', amount = 18 } },
        results = {
            { type = 'fluid', name = 'electrolyte', amount = 16 },
            { type = 'item', name = 'toxic-tar', amount = 2 },
        },
        allow_productivity = false,
        main_product = 'toxic-tar',
    },
    {
        type = 'recipe',
        name = 'holmium-ore',
        localised_name = { 'recipe-name.holmium-ore' },
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'b[leaching]-d[holmium-extract]',
        enabled = false,
        energy_required = 5,
        ingredients = {
            { type = 'item', name = 'metallic-slurry', amount = 10 },
            { type = 'fluid', name = 'heavy-oil', amount = 20 },
        },
        results = { { type = 'item', name = 'holmium-ore', amount = 2 } },
        allow_productivity = true,
    },

    --------------------------------------------------------------------------
    -- TIER 5: TEMPERATURE-GATED PYROLYSIS
    --------------------------------------------------------------------------
    {
        type = 'recipe',
        name = 'superheated-heavy-oil',
        localised_name = { 'recipe-name.superheated-heavy-oil' },
        categories = { 'electromagnetics' },
        subgroup = 'fulgora-processes',
        order = 'c[pyrolysis]-a[superheating]',
        enabled = false,
        energy_required = 2,
        ingredients = { { type = 'fluid', name = 'heavy-oil', amount = 100 } },
        results = { { type = 'fluid', name = 'superheated-heavy-oil', amount = 100, temperature = 350 } },
        allow_productivity = false,
        surface_conditions = fulgora_only(),
    },
    {
        type = 'recipe',
        name = 'carbon-coke',
        localised_name = { 'recipe-name.carbon-coke' },
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'c[pyrolysis]-b[dehydration]',
        enabled = false,
        energy_required = 5,
        ingredients = { { type = 'fluid', name = 'superheated-heavy-oil', amount = 50, minimum_temperature = 300 } },
        results = {
            { type = 'fluid', name = 'light-oil', amount = 20 },
            { type = 'fluid', name = 'water', amount = 10 },
            { type = 'item', name = 'carbon-coke', amount = 3 },
        },
        main_product = 'carbon-coke',
        allow_productivity = true,
    },
    {
        type = 'recipe',
        name = 'carbon-synthesis',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/carbon-synthesis.png',
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'c[pyrolysis]-c[carbon]',
        enabled = false,
        energy_required = 1,
        ingredients = { { type = 'item', name = 'carbon-coke', amount = 5 } },
        results = { { type = 'item', name = 'carbon', amount = 1 } },
        allow_productivity = true,
    },

    --------------------------------------------------------------------------
    -- TIER 6: SOLID CRUSHING & VITRIFICATION (SILICA SYSTEM)
    --------------------------------------------------------------------------
    {
        type = 'recipe',
        name = 'silica-sand',
        localised_name = { 'recipe-name.silica-sand' },
        categories = { 'crushing' },
        subgroup = 'fulgora-processes',
        order = 'd[solids]-a[silt]',
        enabled = false,
        energy_required = 2,
        ingredients = { { type = 'item', name = 'mineral-silt', amount = 2 } },
        results = {
            { type = 'item', name = 'stone', amount = 1 },
            { type = 'item', name = 'silica-sand', amount = 1 },
        },
        -- silica-sand is only produced here, so it can carry the recipe's identity
        main_product = 'silica-sand',
        allow_productivity = true,
    },
    {
        type = 'recipe',
        name = 'crushed-holmium',
        localised_name = { 'recipe-name.crushed-holmium' },
        categories = { 'crushing' },
        subgroup = 'fulgora-processes',
        order = 'd[solids]-b[holmium-crushing]',
        enabled = false,
        energy_required = 2,
        ingredients = { { type = 'item', name = 'holmium-ore', amount = 2 } },
        results = { { type = 'item', name = 'crushed-holmium', amount = 1 } },
        allow_productivity = true,
    },
    {
        type = 'recipe',
        name = 'advanced-quartz-glass-plate',
        categories = { 'smelting' },
        subgroup = 'fulgora-processes',
        order = 'd[solids]-c[vitrification]',
        enabled = false,
        energy_required = 4,
        ingredients = { { type = 'item', name = 'silica-sand', amount = 2 } },
        results = { { type = 'item', name = 'quartz-glass-plate', amount = 1 } },
        allow_productivity = true,
    },
    {
        type = 'recipe',
        name = 'insulated-arc-crucible',
        categories = { 'electromagnetics' },
        subgroup = 'fulgora-processes',
        order = 'e[advanced-components]-a[arc-crucible]',
        enabled = false,
        energy_required = 8,
        ingredients = {
            { type = 'item', name = 'quartz-glass-plate', amount = 2 },
            { type = 'item', name = 'crushed-holmium', amount = 4 },
            { type = 'item', name = 'copper-cable', amount = 5 },
        },
        results = { { type = 'item', name = 'insulated-arc-crucible', amount = 1 } },
        allow_productivity = true,
    },

    --------------------------------------------------------------------------
    -- STANDARD REFACTORED ADVANCED INTERMEDIATES
    --------------------------------------------------------------------------
    {
        type = 'recipe',
        name = 'crushed-holmium-liquefaction',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/crushed-holmium-liquefaction.png',
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'f[refining]-a[crushed-holmium-liquefaction]',
        auto_recycle = false,
        energy_required = 10,
        -- crushed-holmium amount kept at parity with vanilla's 2-ore-per-100-fluid ratio
        -- (crushed-holmium is already 2 ore -> 1 crushed-holmium, so 1 crushed-holmium
        -- here = 2 ore total). Using 2 here would silently double the raw ore cost of the
        -- deep chain vs. the vanilla recipe, defeating the point of the crushing step.
        ingredients = {
            { type = 'item', name = 'crushed-holmium', amount = 1 },
            { type = 'item', name = 'stone', amount = 1 },
            { type = 'fluid', name = 'water', amount = 10 },
        },
        results = { { type = 'fluid', name = 'holmium-solution', amount = 100 } },
        allow_productivity = true,
        main_product = 'holmium-solution',
        enabled = false,
    },
    {
        type = 'recipe',
        name = 'plastic-bar-from-carbon',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/plastic-bar-from-carbon.png',
        categories = { 'chemistry' },
        subgroup = 'fulgora-processes',
        order = 'f[refining]-b[plastic]',
        enabled = false,
        energy_required = 2,
        ingredients = {
            { type = 'item', name = 'carbon', amount = 1 },
            { type = 'fluid', name = 'light-oil', amount = 20 },
        },
        results = { { type = 'item', name = 'plastic-bar', amount = 2 } },
        allow_productivity = true,
    },

    --------------------------------------------------------------------------
    -- SCIENCE OVERHAUL: INEFFICIENT BASE VS OPTIMIZED ADVANCED
    --------------------------------------------------------------------------
    {
        type = 'recipe',
        name = 'advanced-electromagnetic-science-pack',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/advanced-electromagnetic-science-pack.png',
        categories = { 'electromagnetics' },
        subgroup = 'fulgora-processes',
        order = 'g[science]-b[advanced-electromagnetic-pack]',
        enabled = false,
        energy_required = 8,
        ingredients = {
            { type = 'item', name = 'supercapacitor', amount = 1 },
            { type = 'item', name = 'accumulator', amount = 1 },
            { type = 'item', name = 'quartz-glass-plate', amount = 1 },
            { type = 'fluid', name = 'electrolyte', amount = 25 },
            { type = 'fluid', name = 'holmium-solution', amount = 25 },
        },
        results = { { type = 'item', name = 'electromagnetic-science-pack', amount = 2 } },
        allow_productivity = true, -- Productivity modules re-enabled
        surface_conditions = fulgora_only(),
    },
})
