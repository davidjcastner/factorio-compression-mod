-- constants
local COMPRESSED_ITEM_NAMES = { "compressed-stone-brick", "compressed-raw-wood", "compressed-coal", "compressed-stone", "compressed-iron-ore", "compressed-copper-ore", "compressed-uranium-ore", "compressed-wood", "compressed-iron-plate", "compressed-copper-plate", "compressed-steel-plate", "compressed-solid-fuel", "compressed-plastic-bar", "compressed-sulfur", "compressed-battery", "compressed-explosives", "compressed-copper-cable", "compressed-iron-stick", "compressed-iron-gear-wheel", "compressed-electronic-circuit", "compressed-advanced-circuit", "compressed-processing-unit", "compressed-engine-unit", "compressed-electric-engine-unit", "compressed-flying-robot-frame", "compressed-rocket-control-unit", "compressed-low-density-structure", "compressed-rocket-fuel", "solidified-crude-oil", "solidified-heavy-oil", "solidified-light-oil", "solidified-lubricant", "solidified-petroleum-gas", "solidified-sulfuric-acid", "solidified-water", "solidified-coolant" }
local MAX_DROP_DISTANCE = 100
local TICK_SEARCH_TIME = 30 -- number of ticks between checks

-- called on all logistic robots
local function drop_compressed_items(robot)
    local inventory = robot.get_inventory(defines.inventory.robot_cargo)
    if not inventory.is_empty() then
        for _, compressed_item in pairs(COMPRESSED_ITEM_NAMES) do

            -- check to see if any compressed in robot inventory
            local search_results = inventory.find_item_stack(compressed_item)
            if search_results then -- found a compressed item

                -- drop items on ground and clear from inventory
                local drop_position = robot.surface.find_non_colliding_position("item-on-ground", robot.position, MAX_DROP_DISTANCE, 0.25)
                local dropped_item = robot.surface.create_entity{
                    name = "item-on-ground",
                    position = drop_position or robot.position,
                    force = robot.force,
                    stack = {
                        name = search_results.name,
                        count = search_results.count
                    }
                }
                if dropped_item and dropped_item.valid then --successfully dropped the item stack
                    inventory.remove(search_results)
                end
            end
        end
    end
end

-- event handler for each game tick
local function on_tick(event)
    if not global.next_tick or global.next_tick <= game.tick then

        -- find all logistic robots
        for _, surface in pairs(game.surfaces) do
            local all_logistic_robots = surface.find_entities_filtered{ type="logistic-robot" }
            for _, logistic_robot in pairs(all_logistic_robots) do

                -- drop compressed items
                drop_compressed_items(logistic_robot)
            end
        end

        -- increment next_tick
        global.next_tick = game.tick + TICK_SEARCH_TIME
    end
end

script.on_event(defines.events.on_tick, on_tick)