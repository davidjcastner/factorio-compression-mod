data:extend({
    {
        type = "technology",
        name = "resource-compression-technology",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-resource.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-raw-wood" },
            { type = "unlock-recipe", recipe = "decompressed-raw-wood" },
            { type = "unlock-recipe", recipe = "compressed-coal" },
            { type = "unlock-recipe", recipe = "decompressed-coal" },
            { type = "unlock-recipe", recipe = "compressed-stone" },
            { type = "unlock-recipe", recipe = "decompressed-stone" },
            { type = "unlock-recipe", recipe = "compressed-iron-ore" },
            { type = "unlock-recipe", recipe = "decompressed-iron-ore" },
            { type = "unlock-recipe", recipe = "compressed-copper-ore" },
            { type = "unlock-recipe", recipe = "decompressed-copper-ore" },
            { type = "unlock-recipe", recipe = "compressed-uranium-ore" },
            { type = "unlock-recipe", recipe = "decompressed-uranium-ore" },
        },
        prerequisites = { "automation-2" },
        unit = {
            count = 50,
            ingredients = {
                { "science-pack-1", 1 }
            },
            time = 5
        },
        order = "d-a-b"
    },
    {
        type = "technology",
        name = "item-compression-technology",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-item.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-stone-brick" },
            { type = "unlock-recipe", recipe = "decompressed-stone-brick" },
            { type = "unlock-recipe", recipe = "compressed-iron-plate" },
            { type = "unlock-recipe", recipe = "decompressed-iron-plate" },
            { type = "unlock-recipe", recipe = "compressed-copper-plate" },
            { type = "unlock-recipe", recipe = "decompressed-copper-plate" },
            { type = "unlock-recipe", recipe = "compressed-steel-plate" },
            { type = "unlock-recipe", recipe = "decompressed-steel-plate" },
        },
        prerequisites = { "automation-2", "steel-processing" },
        unit = {
            count = 50,
            ingredients = {
                { "science-pack-1", 1 }
            },
            time = 5
        },
        order = "d-a-c"
    },
    {
        type = "technology",
        name = "item-compression-technology-2",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-item.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-wood" },
            { type = "unlock-recipe", recipe = "decompressed-wood" },
            { type = "unlock-recipe", recipe = "compressed-copper-cable" },
            { type = "unlock-recipe", recipe = "decompressed-copper-cable" },
            { type = "unlock-recipe", recipe = "compressed-iron-stick" },
            { type = "unlock-recipe", recipe = "decompressed-iron-stick" },
            { type = "unlock-recipe", recipe = "compressed-iron-gear-wheel" },
            { type = "unlock-recipe", recipe = "decompressed-iron-gear-wheel" },
            { type = "unlock-recipe", recipe = "compressed-electronic-circuit" },
            { type = "unlock-recipe", recipe = "decompressed-electronic-circuit" },
        },
        prerequisites = { "item-compression-technology" },
        unit = {
            count = 100,
            ingredients = {
                { "science-pack-1", 1 }
            },
            time = 5
        },
        order = "d-a-d"
    },
    {
        type = "technology",
        name = "item-compression-technology-3",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-item.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-solid-fuel" },
            { type = "unlock-recipe", recipe = "decompressed-solid-fuel" },
            { type = "unlock-recipe", recipe = "compressed-plastic-bar" },
            { type = "unlock-recipe", recipe = "decompressed-plastic-bar" },
            { type = "unlock-recipe", recipe = "compressed-sulfur" },
            { type = "unlock-recipe", recipe = "decompressed-sulfur" },
            { type = "unlock-recipe", recipe = "compressed-battery" },
            { type = "unlock-recipe", recipe = "decompressed-battery" },
            { type = "unlock-recipe", recipe = "compressed-explosives" },
            { type = "unlock-recipe", recipe = "decompressed-explosives" },
        },
        prerequisites = { "item-compression-technology-2", "explosives", "battery", "plastics" },
        unit = {
            count = 150,
            ingredients = {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 }
            },
            time = 30
        },
        order = "c-c-d"
    },
    {
        type = "technology",
        name = "item-compression-technology-4",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-item.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-advanced-circuit" },
            { type = "unlock-recipe", recipe = "decompressed-advanced-circuit" },
            { type = "unlock-recipe", recipe = "compressed-engine-unit" },
            { type = "unlock-recipe", recipe = "decompressed-engine-unit" },
            { type = "unlock-recipe", recipe = "compressed-electric-engine-unit" },
            { type = "unlock-recipe", recipe = "decompressed-electric-engine-unit" },
            { type = "unlock-recipe", recipe = "compressed-flying-robot-frame" },
            { type = "unlock-recipe", recipe = "decompressed-flying-robot-frame" },
        },
        prerequisites = { "item-compression-technology-3", "robotics" },
        unit = {
            count = 150,
            ingredients = {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 }
            },
            time = 30
        },
        order = "c-c-e"
    },
    {
        type = "technology",
        name = "item-compression-technology-5",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-item.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-processing-unit" },
            { type = "unlock-recipe", recipe = "decompressed-processing-unit" },
        },
        prerequisites = { "item-compression-technology-4", "advanced-electronics-2" },
        unit = {
            count = 150,
            ingredients = {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 },
                { "science-pack-3", 1 }
            },
            time = 30
        },
        order = "a-d-e"
    },
    {
        type = "technology",
        name = "item-compression-technology-6",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-item.png",
        effects = {
            { type = "unlock-recipe", recipe = "compressed-rocket-control-unit" },
            { type = "unlock-recipe", recipe = "decompressed-rocket-control-unit" },
            { type = "unlock-recipe", recipe = "compressed-low-density-structure" },
            { type = "unlock-recipe", recipe = "decompressed-low-density-structure" },
            { type = "unlock-recipe", recipe = "compressed-rocket-fuel" },
            { type = "unlock-recipe", recipe = "decompressed-rocket-fuel" },
        },
        prerequisites = { "item-compression-technology-5", "rocket-silo" },
        unit = {
            count = 200,
            ingredients = {
                {"science-pack-1", 1},
                {"science-pack-2", 1},
                {"science-pack-3", 1},
                {"military-science-pack", 1},
                {"production-science-pack", 1},
                {"high-tech-science-pack", 1}
            },
            time = 30
        },
        order = "k-b"
    },
    {
        type = "technology",
        name = "fluid-compression-technology",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-fluid.png",
        effects = {
            { type = "unlock-recipe", recipe = "solidified-water" },
            { type = "unlock-recipe", recipe = "liquified-water" },
        },
        prerequisites = { "fluid-handling" },
        unit = {
            count = 50,
            ingredients = {
                { "science-pack-1", 1 }
            },
            time = 5
        },
        order = "d-a-e"
    },
    {
        type = "technology",
        name = "fluid-compression-technology-2",
        icon_size = 128,
        icon = "__IntermediateProductCompression__/graphics/technology-fluid.png",
        effects = {
            { type = "unlock-recipe", recipe = "fluid-coolant" },
            { type = "unlock-recipe", recipe = "solidified-coolant" },
            { type = "unlock-recipe", recipe = "liquified-coolant" },
            { type = "unlock-recipe", recipe = "solidified-crude-oil" },
            { type = "unlock-recipe", recipe = "liquified-crude-oil" },
            { type = "unlock-recipe", recipe = "solidified-heavy-oil" },
            { type = "unlock-recipe", recipe = "liquified-heavy-oil" },
            { type = "unlock-recipe", recipe = "solidified-light-oil" },
            { type = "unlock-recipe", recipe = "liquified-light-oil" },
            { type = "unlock-recipe", recipe = "solidified-lubricant" },
            { type = "unlock-recipe", recipe = "liquified-lubricant" },
            { type = "unlock-recipe", recipe = "solidified-petroleum-gas" },
            { type = "unlock-recipe", recipe = "liquified-petroleum-gas" },
            { type = "unlock-recipe", recipe = "solidified-sulfuric-acid" },
            { type = "unlock-recipe", recipe = "liquified-sulfuric-acid" },
        },
        prerequisites = { "fluid-compression-technology", "sulfur-processing" },
        unit = {
            count = 150,
            ingredients = {
                { "science-pack-1", 1 },
                { "science-pack-2", 1 }
            },
            time = 30
        },
        order = "c-c-f"
    }
})