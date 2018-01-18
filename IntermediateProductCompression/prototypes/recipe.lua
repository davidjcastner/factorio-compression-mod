-- compression ratios and crafting times:

-- raw resource: raw-wood, coal, stone, iron-ore, copper-ore, uranium-ore
local RAW_RESOURCE_COMPRESSION = 20 -- scalar
local RAW_RESOURCE_CRAFTING_TIME = 1.8 -- engery cost

-- basic material: stone-brick, wood, iron-plate, copper-plate, steel-plate,
    -- solid-fuel, plastic-bar, sulfur, battery, explosives, copper-cable,
    -- iron-stick, iron-gear-wheel, electronic-circuit, advanced-circuit, processing-unit
local BASIC_MATERIAL_COMPRESSION = 16 -- scalar
local BASIC_MATERIAL_CRAFTING_TIME = 2.8 -- engery cost

-- intermediate material: engine-unit, electric-engine-unit, flying-robot-frame
local INTERMEDIATE_MATERIAL_COMPRESSION = 12 -- scalar
local INTERMEDIATE_MATERIAL_CRAFTING_TIME = 3 -- engery cost

-- advanced material: rocket-control-unit, low-density-structure, rocket-fuel
local ADVANCED_MATERIAL_COMPRESSION = 8 -- scalar
local ADVANCED_MATERIAL_CRAFTING_TIME = 3.5 -- engery cost

-- water: water
local WATER_INGREDIENT_AMOUNT = 120 -- scalar
local WATER_RESULT_AMOUNT = 100 -- scalar
local WATER_CRAFTING_TIME = 0.5 -- engery cost

-- coolant: fluid-coolant
local COOLANT_RESULT_AMOUNT = 50 -- scalar
-- crafting time is meant for a 1:4 coolant:solidifcation setup
local COOLANT_CRAFTING_TIME = 1.8 -- engery cost

-- default-fluid: crude-oil, heavy-oil, light-oil, lubricant, petroleum-gas, sulfuric-acid
local DEFAULT_FLUID_INGREDIENT_AMOUNT = 200 -- scalar
local DEFAULT_FLUID_COOLANT_REQUIRED = 10 -- scalar
local DEFAULT_FLUID_RESULT_AMOUNT = 200 -- scalar
local DEFAULT_FLUID_CRAFTING_TIME = 1.5 -- engery cost

data:extend({

    -- stone-brick compression
    {
        type = "recipe",
        name = "compressed-stone-brick",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"stone-brick", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-stone-brick",
        subgroup = "terrain",
        order = "a[stone-brick]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-stone-brick",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-stone-brick", 1}},
        result = "stone-brick",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "terrain",
        order = "a[stone-brick]-b[decompression]",
    },

    -- raw-wood compression
    {
        type = "recipe",
        name = "compressed-raw-wood",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"raw-wood", RAW_RESOURCE_COMPRESSION}},
        result = "compressed-raw-wood",
        subgroup = "raw-resource",
        order = "a[raw-wood]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-raw-wood",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"compressed-raw-wood", 1}},
        result = "raw-wood",
        result_count = RAW_RESOURCE_COMPRESSION,
        subgroup = "raw-resource",
        order = "a[raw-wood]-b[decompression]",
    },

    -- coal compression
    {
        type = "recipe",
        name = "compressed-coal",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"coal", RAW_RESOURCE_COMPRESSION}},
        result = "compressed-coal",
        subgroup = "raw-resource",
        order = "b[coal]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-coal",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"compressed-coal", 1}},
        result = "coal",
        result_count = RAW_RESOURCE_COMPRESSION,
        subgroup = "raw-resource",
        order = "b[coal]-b[decompression]",
    },

    -- stone compression
    {
        type = "recipe",
        name = "compressed-stone",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"stone", RAW_RESOURCE_COMPRESSION}},
        result = "compressed-stone",
        subgroup = "raw-resource",
        order = "d[stone]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-stone",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"compressed-stone", 1}},
        result = "stone",
        result_count = RAW_RESOURCE_COMPRESSION,
        subgroup = "raw-resource",
        order = "d[stone]-b[decompression]",
    },

    -- iron-ore compression
    {
        type = "recipe",
        name = "compressed-iron-ore",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"iron-ore", RAW_RESOURCE_COMPRESSION}},
        result = "compressed-iron-ore",
        subgroup = "raw-resource",
        order = "e[iron-ore]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-iron-ore",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"compressed-iron-ore", 1}},
        result = "iron-ore",
        result_count = RAW_RESOURCE_COMPRESSION,
        subgroup = "raw-resource",
        order = "e[iron-ore]-b[decompression]",
    },

    -- copper-ore compression
    {
        type = "recipe",
        name = "compressed-copper-ore",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"copper-ore", RAW_RESOURCE_COMPRESSION}},
        result = "compressed-copper-ore",
        subgroup = "raw-resource",
        order = "f[copper-ore]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-copper-ore",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"compressed-copper-ore", 1}},
        result = "copper-ore",
        result_count = RAW_RESOURCE_COMPRESSION,
        subgroup = "raw-resource",
        order = "f[copper-ore]-b[decompression]",
    },

    -- uranium-ore compression
    {
        type = "recipe",
        name = "compressed-uranium-ore",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"uranium-ore", RAW_RESOURCE_COMPRESSION}},
        result = "compressed-uranium-ore",
        subgroup = "raw-resource",
        order = "g[uranium-ore]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-uranium-ore",
        enabled = false,
        energy_required = RAW_RESOURCE_CRAFTING_TIME,
        ingredients = {{"compressed-uranium-ore", 1}},
        result = "uranium-ore",
        result_count = RAW_RESOURCE_COMPRESSION,
        subgroup = "raw-resource",
        order = "g[uranium-ore]-b[decompression]",
    },

    -- wood compression
    {
        type = "recipe",
        name = "compressed-wood",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"wood", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-wood",
        subgroup = "raw-material",
        order = "a[wood]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-wood",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-wood", 1}},
        result = "wood",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "a[wood]-b[decompression]",
    },

    -- iron-plate compression
    {
        type = "recipe",
        name = "compressed-iron-plate",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"iron-plate", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-iron-plate",
        subgroup = "raw-material",
        order = "b[iron-plate]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-iron-plate",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-iron-plate", 1}},
        result = "iron-plate",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "b[iron-plate]-b[decompression]",
    },

    -- copper-plate compression
    {
        type = "recipe",
        name = "compressed-copper-plate",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"copper-plate", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-copper-plate",
        subgroup = "raw-material",
        order = "c[copper-plate]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-copper-plate",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-copper-plate", 1}},
        result = "copper-plate",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "c[copper-plate]-b[decompression]",
    },

    -- steel-plate compression
    {
        type = "recipe",
        name = "compressed-steel-plate",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"steel-plate", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-steel-plate",
        subgroup = "raw-material",
        order = "d[steel-plate]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-steel-plate",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-steel-plate", 1}},
        result = "steel-plate",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "d[steel-plate]-b[decompression]",
    },

    -- solid-fuel compression
    {
        type = "recipe",
        name = "compressed-solid-fuel",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"solid-fuel", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-solid-fuel",
        subgroup = "raw-material",
        order = "c[solid-fuel]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-solid-fuel",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-solid-fuel", 1}},
        result = "solid-fuel",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "c[solid-fuel]-b[decompression]",
    },

    -- plastic-bar compression
    {
        type = "recipe",
        name = "compressed-plastic-bar",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"plastic-bar", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-plastic-bar",
        subgroup = "raw-material",
        order = "f[plastic-bar]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-plastic-bar",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-plastic-bar", 1}},
        result = "plastic-bar",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "f[plastic-bar]-b[decompression]",
    },

    -- sulfur compression
    {
        type = "recipe",
        name = "compressed-sulfur",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"sulfur", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-sulfur",
        subgroup = "raw-material",
        order = "g[sulfur]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-sulfur",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-sulfur", 1}},
        result = "sulfur",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "g[sulfur]-b[decompression]",
    },

    -- battery compression
    {
        type = "recipe",
        name = "compressed-battery",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"battery", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-battery",
        subgroup = "raw-material",
        order = "h[battery]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-battery",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-battery", 1}},
        result = "battery",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "h[battery]-b[decompression]",
    },

    -- explosives compression
    {
        type = "recipe",
        name = "compressed-explosives",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"explosives", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-explosives",
        subgroup = "raw-material",
        order = "j[explosives]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-explosives",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-explosives", 1}},
        result = "explosives",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "raw-material",
        order = "j[explosives]-b[decompression]",
    },

    -- copper-cable compression
    {
        type = "recipe",
        name = "compressed-copper-cable",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"copper-cable", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-copper-cable",
        subgroup = "intermediate-product",
        order = "a[copper-cable]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-copper-cable",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-copper-cable", 1}},
        result = "copper-cable",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "a[copper-cable]-b[decompression]",
    },

    -- iron-stick compression
    {
        type = "recipe",
        name = "compressed-iron-stick",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"iron-stick", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-iron-stick",
        subgroup = "intermediate-product",
        order = "b[iron-stick]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-iron-stick",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-iron-stick", 1}},
        result = "iron-stick",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "b[iron-stick]-b[decompression]",
    },

    -- iron-gear-wheel compression
    {
        type = "recipe",
        name = "compressed-iron-gear-wheel",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"iron-gear-wheel", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-iron-gear-wheel",
        subgroup = "intermediate-product",
        order = "c[iron-gear-wheel]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-iron-gear-wheel",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-iron-gear-wheel", 1}},
        result = "iron-gear-wheel",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "c[iron-gear-wheel]-b[decompression]",
    },

    -- electronic-circuit compression
    {
        type = "recipe",
        name = "compressed-electronic-circuit",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"electronic-circuit", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-electronic-circuit",
        subgroup = "intermediate-product",
        order = "e[electronic-circuit]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-electronic-circuit",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-electronic-circuit", 1}},
        result = "electronic-circuit",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "e[electronic-circuit]-b[decompression]",
    },

    -- advanced-circuit compression
    {
        type = "recipe",
        name = "compressed-advanced-circuit",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"advanced-circuit", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-advanced-circuit",
        subgroup = "intermediate-product",
        order = "f[advanced-circuit]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-advanced-circuit",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-advanced-circuit", 1}},
        result = "advanced-circuit",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "f[advanced-circuit]-b[decompression]",
    },

    -- processing-unit compression
    {
        type = "recipe",
        name = "compressed-processing-unit",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"processing-unit", BASIC_MATERIAL_COMPRESSION}},
        result = "compressed-processing-unit",
        subgroup = "intermediate-product",
        order = "g[processing-unit]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-processing-unit",
        enabled = false,
        energy_required = BASIC_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-processing-unit", 1}},
        result = "processing-unit",
        result_count = BASIC_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "g[processing-unit]-b[decompression]",
    },

    -- engine-unit compression
    {
        type = "recipe",
        name = "compressed-engine-unit",
        enabled = false,
        energy_required = INTERMEDIATE_MATERIAL_CRAFTING_TIME,
        ingredients = {{"engine-unit", INTERMEDIATE_MATERIAL_COMPRESSION}},
        result = "compressed-engine-unit",
        subgroup = "intermediate-product",
        order = "h[engine-unit]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-engine-unit",
        enabled = false,
        energy_required = INTERMEDIATE_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-engine-unit", 1}},
        result = "engine-unit",
        result_count = INTERMEDIATE_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "h[engine-unit]-b[decompression]",
    },

    -- electric-engine-unit compression
    {
        type = "recipe",
        name = "compressed-electric-engine-unit",
        enabled = false,
        energy_required = INTERMEDIATE_MATERIAL_CRAFTING_TIME,
        ingredients = {{"electric-engine-unit", INTERMEDIATE_MATERIAL_COMPRESSION}},
        result = "compressed-electric-engine-unit",
        subgroup = "intermediate-product",
        order = "i[electric-engine-unit]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-electric-engine-unit",
        enabled = false,
        energy_required = INTERMEDIATE_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-electric-engine-unit", 1}},
        result = "electric-engine-unit",
        result_count = INTERMEDIATE_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "i[electric-engine-unit]-b[decompression]",
    },

    -- flying-robot-frame compression
    {
        type = "recipe",
        name = "compressed-flying-robot-frame",
        enabled = false,
        energy_required = INTERMEDIATE_MATERIAL_CRAFTING_TIME,
        ingredients = {{"flying-robot-frame", INTERMEDIATE_MATERIAL_COMPRESSION}},
        result = "compressed-flying-robot-frame",
        subgroup = "intermediate-product",
        order = "l[flying-robot-frame]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-flying-robot-frame",
        enabled = false,
        energy_required = INTERMEDIATE_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-flying-robot-frame", 1}},
        result = "flying-robot-frame",
        result_count = INTERMEDIATE_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "l[flying-robot-frame]-b[decompression]",
    },

    -- rocket-control-unit compression
    {
        type = "recipe",
        name = "compressed-rocket-control-unit",
        enabled = false,
        energy_required = ADVANCED_MATERIAL_CRAFTING_TIME,
        ingredients = {{"rocket-control-unit", ADVANCED_MATERIAL_COMPRESSION}},
        result = "compressed-rocket-control-unit",
        subgroup = "intermediate-product",
        order = "n[rocket-control-unit]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-rocket-control-unit",
        enabled = false,
        energy_required = ADVANCED_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-rocket-control-unit", 1}},
        result = "rocket-control-unit",
        result_count = ADVANCED_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "n[rocket-control-unit]-b[decompression]",
    },

    -- low-density-structure compression
    {
        type = "recipe",
        name = "compressed-low-density-structure",
        enabled = false,
        energy_required = ADVANCED_MATERIAL_CRAFTING_TIME,
        ingredients = {{"low-density-structure", ADVANCED_MATERIAL_COMPRESSION}},
        result = "compressed-low-density-structure",
        subgroup = "intermediate-product",
        order = "o[rocket-structure]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-low-density-structure",
        enabled = false,
        energy_required = ADVANCED_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-low-density-structure", 1}},
        result = "low-density-structure",
        result_count = ADVANCED_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "o[rocket-structure]-b[decompression]",
    },

    -- rocket-fuel compression
    {
        type = "recipe",
        name = "compressed-rocket-fuel",
        enabled = false,
        energy_required = ADVANCED_MATERIAL_CRAFTING_TIME,
        ingredients = {{"rocket-fuel", ADVANCED_MATERIAL_COMPRESSION}},
        result = "compressed-rocket-fuel",
        subgroup = "intermediate-product",
        order = "p[rocket-fuel]-c[compression]",
    },
    {
        type = "recipe",
        name = "decompressed-rocket-fuel",
        enabled = false,
        energy_required = ADVANCED_MATERIAL_CRAFTING_TIME,
        ingredients = {{"compressed-rocket-fuel", 1}},
        result = "rocket-fuel",
        result_count = ADVANCED_MATERIAL_COMPRESSION,
        subgroup = "intermediate-product",
        order = "p[rocket-fuel]-b[decompression]",
    },

    -- water compression
    {
        type = "recipe",
        name = "solidified-water",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = WATER_CRAFTING_TIME,
        ingredients = {{type="fluid", name="water", amount=WATER_INGREDIENT_AMOUNT}},
        result = "solidified-water",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-a[water]"
    },
    {
        type = "recipe",
        name = "liquified-water",
        category = "crafting-with-fluid",
        enabled = false,
        energy_required = WATER_CRAFTING_TIME,
        ingredients = {{"solidified-water", 1}},
        results = {{type="fluid", name="water", amount=WATER_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-a[water]"
    },

    -- fluid-coolant
    {
        type = "recipe",
        name = "fluid-coolant",
        category = "chemistry",
        enabled = false,
        energy_required = COOLANT_CRAFTING_TIME,
        ingredients = {{"solidified-water", 1}},
        results = {{type="fluid", name="fluid-coolant", amount=COOLANT_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-g[water-to-coolant]",
        crafting_machine_tint =
        {
          primary = {r = 0.000, g = 0.000, b = 0.875, a = 0.000},
          secondary = {r = 0.000, g = 0.000, b = 0.940, a = 0.000},
          tertiary = {r = 0.000, g = 0.000, b = 0.795, a = 0.000},
        }
    },

    -- fluid-coolant compression
    {
        type = "recipe",
        name = "solidified-coolant",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="fluid-coolant", amount=(DEFAULT_FLUID_INGREDIENT_AMOUNT + DEFAULT_FLUID_COOLANT_REQUIRED)}
        },
        result = "solidified-coolant",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-g[coolant]",
        crafting_machine_tint =
        {
          primary = {r = 0.000, g = 0.000, b = 0.875, a = 0.000},
          secondary = {r = 0.000, g = 0.000, b = 0.940, a = 0.000},
          tertiary = {r = 0.000, g = 0.000, b = 0.795, a = 0.000},
        }
    },
    {
        type = "recipe",
        name = "liquified-coolant",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-coolant", 1}},
        results = {{type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-g[coolant]",
        crafting_machine_tint =
        {
          primary = {r = 0.000, g = 0.000, b = 0.875, a = 0.000},
          secondary = {r = 0.000, g = 0.000, b = 0.940, a = 0.000},
          tertiary = {r = 0.000, g = 0.000, b = 0.795, a = 0.000},
        }
    },

    -- crude-oil compression
    {
        type = "recipe",
        name = "solidified-crude-oil",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="crude-oil", amount=DEFAULT_FLUID_INGREDIENT_AMOUNT},
            {type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_COOLANT_REQUIRED}
        },
        result = "solidified-crude-oil",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-b[crude-oil]",
        crafting_machine_tint =
        {
          primary = {r = 0.160, g = 0.160, b = 0.160, a = 0.000},
          secondary = {r = 0.470, g = 0.470, b = 0.470, a = 0.000},
          tertiary = {r = 0.435, g = 0.435, b = 0.435, a = 0.000},
        }
    },
    {
        type = "recipe",
        name = "liquified-crude-oil",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-crude-oil", 1}},
        results = {{type="fluid", name="crude-oil", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-b[crude-oil]",
        crafting_machine_tint =
        {
          primary = {r = 0.160, g = 0.160, b = 0.160, a = 0.000},
          secondary = {r = 0.470, g = 0.470, b = 0.470, a = 0.000},
          tertiary = {r = 0.435, g = 0.435, b = 0.435, a = 0.000},
        }
    },

    -- heavy-oil compression
    {
        type = "recipe",
        name = "solidified-heavy-oil",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="heavy-oil", amount=DEFAULT_FLUID_INGREDIENT_AMOUNT},
            {type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_COOLANT_REQUIRED}
        },
        result = "solidified-heavy-oil",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-c[heavy-oil]",
        crafting_machine_tint =
        {
          primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
          secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
          tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
        }
    },
    {
        type = "recipe",
        name = "liquified-heavy-oil",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-heavy-oil", 1}},
        results = {{type="fluid", name="heavy-oil", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-c[heavy-oil]",
        crafting_machine_tint =
        {
          primary = {r = 0.290, g = 0.027, b = 0.000, a = 0.000}, -- #49060000
          secondary = {r = 0.722, g = 0.465, b = 0.190, a = 0.000}, -- #b8763000
          tertiary = {r = 0.870, g = 0.365, b = 0.000, a = 0.000}, -- #dd5d0000
        }
    },

    -- light-oil compression
    {
        type = "recipe",
        name = "solidified-light-oil",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="light-oil", amount=DEFAULT_FLUID_INGREDIENT_AMOUNT},
            {type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_COOLANT_REQUIRED}
        },
        result = "solidified-light-oil",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-d[light-oil]",
        crafting_machine_tint =
        {
          primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
          secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
          tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
        }
    },
    {
        type = "recipe",
        name = "liquified-light-oil",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-light-oil", 1}},
        results = {{type="fluid", name="light-oil", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-d[light-oil]",
        crafting_machine_tint =
        {
          primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
          secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
          tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
        }
    },

    -- lubricant compression
    {
        type = "recipe",
        name = "solidified-lubricant",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="lubricant", amount=DEFAULT_FLUID_INGREDIENT_AMOUNT},
            {type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_COOLANT_REQUIRED}
        },
        result = "solidified-lubricant",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-e[lubricant]",
        crafting_machine_tint =
        {
          primary = {r = 0.000, g = 0.260, b = 0.010, a = 0.000}, -- #00420200
          secondary = {r = 0.071, g = 0.640, b = 0.000, a = 0.000}, -- #12a30000
          tertiary = {r = 0.026, g = 0.520, b = 0.000, a = 0.000}, -- #06840000
        }
    },
    {
        type = "recipe",
        name = "liquified-lubricant",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-lubricant", 1}},
        results = {{type="fluid", name="lubricant", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-e[lubricant]",
        crafting_machine_tint =
        {
          primary = {r = 0.000, g = 0.260, b = 0.010, a = 0.000}, -- #00420200
          secondary = {r = 0.071, g = 0.640, b = 0.000, a = 0.000}, -- #12a30000
          tertiary = {r = 0.026, g = 0.520, b = 0.000, a = 0.000}, -- #06840000
        }
    },

    -- petroleum-gas compression
    {
        type = "recipe",
        name = "solidified-petroleum-gas",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="petroleum-gas", amount=DEFAULT_FLUID_INGREDIENT_AMOUNT},
            {type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_COOLANT_REQUIRED}
        },
        result = "solidified-petroleum-gas",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-e[petroleum-gas]",
        crafting_machine_tint =
        {
          primary = {r = 0.331, g = 0.075, b = 0.510, a = 0.000}, -- #54138200
          secondary = {r = 0.589, g = 0.540, b = 0.615, a = 0.361}, -- #96899c5c
          tertiary = {r = 0.469, g = 0.145, b = 0.695, a = 0.000}, -- #7724b100
        }
    },
    {
        type = "recipe",
        name = "liquified-petroleum-gas",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-petroleum-gas", 1}},
        results = {{type="fluid", name="petroleum-gas", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-e[petroleum-gas]",
        crafting_machine_tint =
        {
          primary = {r = 0.331, g = 0.075, b = 0.510, a = 0.000}, -- #54138200
          secondary = {r = 0.589, g = 0.540, b = 0.615, a = 0.361}, -- #96899c5c
          tertiary = {r = 0.469, g = 0.145, b = 0.695, a = 0.000}, -- #7724b100
        }
    },

    -- sulfuric-acid compression
    {
        type = "recipe",
        name = "solidified-sulfuric-acid",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {
            {type="fluid", name="sulfuric-acid", amount=DEFAULT_FLUID_INGREDIENT_AMOUNT},
            {type="fluid", name="fluid-coolant", amount=DEFAULT_FLUID_COOLANT_REQUIRED}
        },
        result = "solidified-sulfuric-acid",
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-h[solidification]-f[sulfuric-acid]",
        crafting_machine_tint =
        {
          primary = {r = 0.875, g = 0.735, b = 0.000, a = 0.000}, -- #dfbb0000
          secondary = {r = 0.103, g = 0.940, b = 0.000, a = 0.000}, -- #1aef0000
          tertiary = {r = 0.564, g = 0.795, b = 0.000, a = 0.000}, -- #8fca0000
        }
    },
    {
        type = "recipe",
        name = "liquified-sulfuric-acid",
        category = "chemistry",
        enabled = false,
        energy_required = DEFAULT_FLUID_CRAFTING_TIME,
        ingredients = {{"solidified-sulfuric-acid", 1}},
        results = {{type="fluid", name="sulfuric-acid", amount=DEFAULT_FLUID_RESULT_AMOUNT}},
        subgroup = "fluid-recipes",
        order = "b[fluid-chemistry]-i[liquidification]-f[sulfuric-acid]",
        crafting_machine_tint =
        {
          primary = {r = 0.875, g = 0.735, b = 0.000, a = 0.000}, -- #dfbb0000
          secondary = {r = 0.103, g = 0.940, b = 0.000, a = 0.000}, -- #1aef0000
          tertiary = {r = 0.564, g = 0.795, b = 0.000, a = 0.000}, -- #8fca0000
        }
    }

})