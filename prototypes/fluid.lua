data:extend {
    {
        type = 'fluid',
        name = 'ionized-sludge',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/fluid/ionized-sludge.png',
        icon_size = 1024,
        subgroup = 'fluid',
        order = 'b[new-fluid]-c[fulgora]-c[ionized-sludge]',
        default_temperature = 15,
        base_color = { 0.25, 0.12, 0.38 }, -- Eerie deep metallic-purple sludge base
        flow_color = { 0.62, 0.35, 0.82 }, -- High-conductivity ionized purple flow highlights
        auto_barrel = false,
    },
    {
        type = 'fluid',
        name = 'superheated-heavy-oil',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/fluid/superheated-heavy-oil.png',
        icon_size = 1024,
        subgroup = 'fluid',
        order = 'b[new-fluid]-c[fulgora]-a[superheated-heavy-oil]',
        default_temperature = 350,
        max_temperature = 400,
        heat_capacity = '0.2kJ',
        base_color = { 0.45, 0.15, 0.20 }, -- Glowing orange-tinted thick hydrocarbon base
        flow_color = { 0.85, 0.35, 0.10 }, -- Radiant heat convection highlights
        auto_barrel = false,
    },
    {
        type = 'fluid',
        name = 'dirty-electrolyte',
        icon = '__fulgora-scavenger-sovereign__/graphics/icons/fluid/dirty-electrolyte.png',
        icon_size = 1024,
        subgroup = 'fluid',
        order = 'b[new-fluid]-c[fulgora]-d[dirty-electrolyte]',
        default_temperature = 15,
        base_color = { 0.20, 0.28, 0.22 }, -- Murky, contaminated greenish-purple hue
        flow_color = { 0.42, 0.55, 0.38 }, -- Sluggish, degraded chemical flow appearance
        auto_barrel = false,
    },
}
