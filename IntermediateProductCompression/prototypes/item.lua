-- compression stack sizes:

-- raw resource: raw-wood, coal, stone, iron-ore, copper-ore, uranium-ore
local RAW_RESOURCE_STACK_SIZE = 50 -- scalar

-- basic material: stone-brick, wood, iron-plate, copper-plate, steel-plate,
    -- solid-fuel, plastic-bar, sulfur, battery, explosives, copper-cable,
    -- iron-stick, iron-gear-wheel, electronic-circuit, advanced-circuit, processing-unit
local BASIC_MATERIAL_STACK_SIZE = 50 -- scalar

-- intermediate material: engine-unit, electric-engine-unit, flying-robot-frame
local INTERMEDIATE_MATERIAL_STACK_SIZE = 20 -- scalar

-- advanced material: rocket-control-unit, low-density-structure, rocket-fuel
local ADVANCED_MATERIAL_STACK_SIZE = 5 -- scalar

-- water: water
local WATER_STACK_SIZE = 50

-- default fluid: crude-oil, heavy-oil, light-oil, lubricant, petroleum-gas, sulfuric-acid
local DEFAULT_FLUID_STACK_SIZE = 20 -- scalar

-- fuel efficiency: 80% (not implemented yet)

data:extend({
    {
        type = "item",
        name = "compressed-stone-brick",
        icon = "__IntermediateProductCompression__/graphics/compressed-stone-brick.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "terrain",
        order = "a[stone-brick]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-raw-wood",
        icon = "__IntermediateProductCompression__/graphics/compressed-raw-wood.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "a[raw-wood]-a[compressed]",
        stack_size = RAW_RESOURCE_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-coal",
        icon = "__IntermediateProductCompression__/graphics/compressed-coal.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "b[coal]-a[compressed]",
        stack_size = RAW_RESOURCE_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-stone",
        icon = "__IntermediateProductCompression__/graphics/compressed-stone.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "d[stone]-a[compressed]",
        stack_size = RAW_RESOURCE_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-iron-ore",
        icon = "__IntermediateProductCompression__/graphics/compressed-iron-ore.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "e[iron-ore]-a[compressed]",
        stack_size = RAW_RESOURCE_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-copper-ore",
        icon = "__IntermediateProductCompression__/graphics/compressed-copper-ore.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "f[copper-ore]-a[compressed]",
        stack_size = RAW_RESOURCE_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-uranium-ore",
        icon = "__IntermediateProductCompression__/graphics/compressed-uranium-ore.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-resource",
        order = "g[uranium-ore]-a[compressed]",
        stack_size = RAW_RESOURCE_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-wood",
        icon = "__IntermediateProductCompression__/graphics/compressed-wood.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "a[wood]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-iron-plate",
        icon = "__IntermediateProductCompression__/graphics/compressed-iron-plate.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "b[iron-plate]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-copper-plate",
        icon = "__IntermediateProductCompression__/graphics/compressed-copper-plate.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "c[copper-plate]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-steel-plate",
        icon = "__IntermediateProductCompression__/graphics/compressed-steel-plate.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "d[steel-plate]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-solid-fuel",
        icon = "__IntermediateProductCompression__/graphics/compressed-solid-fuel.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "c[solid-fuel]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-plastic-bar",
        icon = "__IntermediateProductCompression__/graphics/compressed-plastic-bar.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "f[plastic-bar]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-sulfur",
        icon = "__IntermediateProductCompression__/graphics/compressed-sulfur.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "g[sulfur]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-battery",
        icon = "__IntermediateProductCompression__/graphics/compressed-battery.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "h[battery]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-explosives",
        icon = "__IntermediateProductCompression__/graphics/compressed-explosives.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "raw-material",
        order = "j[explosives]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-copper-cable",
        icon = "__IntermediateProductCompression__/graphics/compressed-copper-cable.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[copper-cable]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-iron-stick",
        icon = "__IntermediateProductCompression__/graphics/compressed-iron-stick.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "b[iron-stick]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-iron-gear-wheel",
        icon = "__IntermediateProductCompression__/graphics/compressed-iron-gear-wheel.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "c[iron-gear-wheel]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-electronic-circuit",
        icon = "__IntermediateProductCompression__/graphics/compressed-electronic-circuit.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "e[electronic-circuit]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-advanced-circuit",
        icon = "__IntermediateProductCompression__/graphics/compressed-advanced-circuit.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "f[advanced-circuit]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-processing-unit",
        icon = "__IntermediateProductCompression__/graphics/compressed-processing-unit.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "g[processing-unit]-a[compressed]",
        stack_size = BASIC_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-engine-unit",
        icon = "__IntermediateProductCompression__/graphics/compressed-engine-unit.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "h[engine-unit]-a[compressed]",
        stack_size = INTERMEDIATE_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-electric-engine-unit",
        icon = "__IntermediateProductCompression__/graphics/compressed-electric-engine-unit.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "i[electric-engine-unit]-a[compressed]",
        stack_size = INTERMEDIATE_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-flying-robot-frame",
        icon = "__IntermediateProductCompression__/graphics/compressed-flying-robot-frame.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "l[flying-robot-frame]-a[compressed]",
        stack_size = INTERMEDIATE_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-rocket-control-unit",
        icon = "__IntermediateProductCompression__/graphics/compressed-rocket-control-unit.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "n[rocket-control-unit]-a[compressed]",
        stack_size = ADVANCED_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-low-density-structure",
        icon = "__IntermediateProductCompression__/graphics/compressed-low-density-structure.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "o[rocket-structure]-a[compressed]",
        stack_size = ADVANCED_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "compressed-rocket-fuel",
        icon = "__IntermediateProductCompression__/graphics/compressed-rocket-fuel.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "p[rocket-fuel]-a[compressed]",
        stack_size = ADVANCED_MATERIAL_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-crude-oil",
        icon = "__IntermediateProductCompression__/graphics/solidified-crude-oil.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-b[crude-oil]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-heavy-oil",
        icon = "__IntermediateProductCompression__/graphics/solidified-heavy-oil.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-c[heavy-oil]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-light-oil",
        icon = "__IntermediateProductCompression__/graphics/solidified-light-oil.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-d[light-oil]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-lubricant",
        icon = "__IntermediateProductCompression__/graphics/solidified-lubricant.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "e[lubricant]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-petroleum-gas",
        icon = "__IntermediateProductCompression__/graphics/solidified-petroleum-gas.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-e[petroleum-gas]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-sulfuric-acid",
        icon = "__IntermediateProductCompression__/graphics/solidified-sulfuric-acid.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-f[sulfuric-acid]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-water",
        icon = "__IntermediateProductCompression__/graphics/solidified-water.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-a[water]-f[solidified]",
        stack_size = WATER_STACK_SIZE
    },
    {
        type = "item",
        name = "solidified-coolant",
        icon = "__IntermediateProductCompression__/graphics/solidified-coolant.png",
        icon_size = 32,
        flags = {"goes-to-main-inventory"},
        subgroup = "intermediate-product",
        order = "a[fluid]-g[coolant]-f[solidified]",
        stack_size = DEFAULT_FLUID_STACK_SIZE
    }
})