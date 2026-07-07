-- technology.lua

data:extend({ --------------------------------------------------------------------------
    -- STEP 0: BOOTSTRAP TRIGGER
    --------------------------------------------------------------------------
    {
        type = 'technology',
        name = 'fulgoran-scavenging',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/fulgoran-scavenging.png',
        icon_size = 256,
        prerequisites = { 'planet-discovery-fulgora' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'quartz-glass-plate',
        } },
        research_trigger = {
            type = 'mine-entity',
            entities = { 'scrap' },
        },
        order = 'c[fulgora]-a[scavenging]',
    }, --------------------------------------------------------------------------
    -- BRANCH A: SLUDGE GATHERING
    --------------------------------------------------------------------------
    {
        type = 'technology',
        name = 'electromagnetic-sifting',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/electromagnetic-sifting.png',
        icon_size = 256,
        prerequisites = { 'electromagnetic-science-pack' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'ionized-sludge',
        } },
        unit = {
            count = 300,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-b[sifting]',
    },
    {
        type = 'technology',
        name = 'sludge-centrifuging',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/sludge-centrifuging.png',
        icon_size = 256,
        prerequisites = { 'electromagnetic-sifting' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'ionized-sludge-centrifuging',
        } },
        unit = {
            count = 400,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-b[centrifuging]',
    }, --------------------------------------------------------------------------
    -- BRANCH B: SILICA AND GLASS SYSTEM
    --------------------------------------------------------------------------
    {
        type = 'technology',
        name = 'silt-sifting',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/silt-sifting.png',
        icon_size = 256,
        prerequisites = { 'sludge-centrifuging' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'silica-sand',
        } },
        unit = {
            count = 400,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-c[silt-sifting]',
    },
    {
        type = 'technology',
        name = 'silica-vitrification',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/silica-vitrification.png',
        icon_size = 256,
        prerequisites = { 'silt-sifting' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'advanced-quartz-glass-plate',
        } },
        unit = {
            count = 500,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-c[vitrification]',
    }, --------------------------------------------------------------------------
    -- BRANCH C: BASE EXTRACTION & RAW HOLMIUM
    --------------------------------------------------------------------------
    {
        type = 'technology',
        name = 'slurry-leaching',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/slurry-acid-leaching.png',
        icon_size = 256,
        prerequisites = { 'sludge-centrifuging' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'slurry-acid-leaching',
        } },
        unit = {
            count = 500,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-d[leaching]',
    },
    {
        type = 'technology',
        name = 'holmium-extraction',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/holmium-extraction.png',
        icon_size = 256,
        prerequisites = { 'sludge-centrifuging' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'holmium-ore',
        } },
        unit = {
            count = 500,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-d[holmium-extract]',
    },
    {
        type = 'technology',
        name = 'holmium-crushing',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/holmium-crushing.png',
        icon_size = 256,
        prerequisites = { 'holmium-extraction' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'crushed-holmium',
        } },
        unit = {
            count = 600,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-d[holmium-crush]',
    }, --------------------------------------------------------------------------
    -- BRANCH D: PYROLYSIS & CRACKING (THERMAL LOOP)
    --------------------------------------------------------------------------
    {
        type = 'technology',
        name = 'superheated-heavy-oil',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/superheated-heavy-oil.png',
        icon_size = 256,
        prerequisites = { 'electromagnetic-sifting' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'superheated-heavy-oil',
        } },
        unit = {
            count = 400,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-e[superheating]',
    },
    {
        type = 'technology',
        name = 'thermal-dehydration',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/thermal-dehydration.png',
        icon_size = 256,
        prerequisites = { 'superheated-heavy-oil' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'carbon-coke',
        } },
        unit = {
            count = 600,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-e[dehydration]',
    },
    {
        type = 'technology',
        name = 'carbon-synthesis',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/carbon-synthesis.png',
        icon_size = 256,
        prerequisites = { 'thermal-dehydration' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'carbon-synthesis',
        } },
        unit = {
            count = 600,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-e[carbon-synth]',
    },
    {
        type = 'technology',
        name = 'carbon-plastics',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/carbon-plastics.png',
        icon_size = 256,
        prerequisites = { 'carbon-synthesis' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'plastic-bar-from-carbon',
        } },
        unit = {
            count = 700,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-e[plastics]',
    }, --------------------------------------------------------------------------
    -- CONCURRENT MOVES & MERGES (JOINS)
    --------------------------------------------------------------------------
    -- JOINS: Holmium Crushing (Ore), Silt Sifting (Stone), and Dehydration (Water)
    {
        type = 'technology',
        name = 'holmium-liquefaction',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/holmium-liquefaction.png',
        icon_size = 256,
        prerequisites = { 'holmium-crushing', 'silt-sifting', 'thermal-dehydration' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'crushed-holmium-liquefaction',
        } },
        unit = {
            count = 800,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-f[liquefaction]',
    }, -- JOINS: Sludge Centrifuging (Slurry) and Holmium Liquefaction (Electrolyte pathway)
    {
        type = 'technology',
        name = 'catalytic-dissolution',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/catalytic-dissolution.png',
        icon_size = 256,
        prerequisites = { 'sludge-centrifuging', 'holmium-liquefaction' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'dirty-electrolyte',
        } },
        unit = {
            count = 1000,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-f[catalytic-dissolution]',
    },
    {
        type = 'technology',
        name = 'electrolyte-scrubbing',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/electrolyte-scrubbing.png',
        icon_size = 256,
        prerequisites = { 'catalytic-dissolution' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'toxic-tar',
        } },
        unit = {
            count = 1200,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-f[scrubbing]',
    }, -- JOINS: Silica Vitrification (Glass Plates) and Holmium Crushing (Crushed Feedstock)
    {
        type = 'technology',
        name = 'insulated-arc-infrastructure',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/insulated-arc-infrastructure.png',
        icon_size = 256,
        prerequisites = { 'fulgoran-scavenging', 'silica-vitrification', 'holmium-crushing' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'insulated-arc-crucible',
        } },
        unit = {
            count = 1500,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-g[arc-infrastructure]',
    }, -- THE CAPSTONE FINALE JOIN: Arc Infrastructure (Crucibles) and Electrolyte Scrubbing (Closed Catalyst Loop)
    {
        type = 'technology',
        name = 'advanced-electromagnetic-science',
        icon = '__fulgora-scavenger-sovereign__/graphics/technology/advanced-electromagnetic-science-pack.png',
        icon_size = 256,
        prerequisites = { 'insulated-arc-infrastructure', 'electrolyte-scrubbing' },
        effects = { {
            type = 'unlock-recipe',
            recipe = 'advanced-electromagnetic-science-pack',
        } },
        unit = {
            count = 2000,
            ingredients = {
                { 'automation-science-pack', 1 },
                { 'logistic-science-pack', 1 },
                { 'chemical-science-pack', 1 },
                { 'space-science-pack', 1 },
                { 'electromagnetic-science-pack', 1 },
            },
            time = 60,
        },
        order = 'c[fulgora]-h[advanced-science]',
    },
})
