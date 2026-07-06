-- technology.lua

data:extend({ --------------------------------------------------------------------------
    -- STEP 0: BOOTSTRAP TRIGGER
    --------------------------------------------------------------------------
    {
        type = 'technology',
        name = 'fulgoran-scavenging',
        icons = {
            { icon = '__fulgora-scavenger-sovereign__/graphics/icons/quartz-glass-plate.png', icon_size = 1024, scale = 1 },
            { icon = '__base__/graphics/icons/stone.png', icon_size = 64, mipmaps = 4, scale = 8, shift = {-256,-256} },
        },
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/fluid/ionized-sludge.png',
        icon_size = 1024,
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/metallic-slurry.png',
        icon_size = 1024,
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/silica-sand.png',
        icon_size = 1024,
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
        icons = {
            { icon = '__fulgora-scavenger-sovereign__/graphics/icons/quartz-glass-plate.png', icon_size = 1024 },
        },
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
        icon_size = 1024,
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
        icons = {
            { icon = '__fulgora-scavenger-sovereign__/graphics/icons/metallic-slurry.png', icon_size = 1024, scale = 1 },
            { icon = '__space-age__/graphics/icons/holmium-ore.png', icon_size = 64, mipmaps = 4, scale = 8, shift = {-256,-256} },
        },
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/crushed-holmium.png',
        icon_size = 1024,
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/fluid/superheated-heavy-oil.png',
        icon_size = 1024,
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/carbon-coke.png',
        icon_size = 1024,
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
        icons = {
            { icon = '__fulgora-scavenger-sovereign__/graphics/icons/carbon-coke.png', icon_size = 1024, scale = 1 },
            { icon = '__space-age__/graphics/icons/carbon.png', icon_size = 64, mipmaps = 4, scale = 8, shift = {-256,-256} },
        },
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
        icons = {
            { icon = '__base__/graphics/technology/plastics.png', icon_size = 256, scale = 1 },
            { icon = '__space-age__/graphics/icons/carbon.png', mipmaps = 4, scale = 2, shift = {-64,-64} },
            { icon = '__base__/graphics/icons/fluid/light-oil.png', mipmaps = 4, scale = 2, shift = {64,-64} },
        },
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
        icons = {
            { icon = '__fulgora-scavenger-sovereign__/graphics/icons/crushed-holmium.png', icon_size = 1024, scale = 1 },
            { icon = '__space-age__/graphics/icons/fluid/holmium-solution.png', icon_size = 64, mipmaps = 4, scale = 8, shift = {-256,-256} },
        },
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/fluid/dirty-electrolyte.png',
        icon_size = 1024,
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/toxic-tar.png',
        icon_size = 1024,
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
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/insulated-arc-crucible.png',
        icon_size = 1024,
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
        icons = {
            { icon = '__fulgora-scavenger-sovereign__/graphics/icons/quartz-glass-plate.png', icon_size = 1024, scale = 1 },
            { icon = '__space-age__/graphics/icons/electromagnetic-science-pack.png', icon_size = 64, mipmaps = 4, scale = 8, shift = {-256,-256} },
        },
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
