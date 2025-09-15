local scene = {}
local player = require("src.entities.player")
local goblin = require("src.entities.goblin")

function scene.draw()
    local map_grass_1 = {
        "#####################################################",
        "     ^                                               ",
        "                                                     ",
        "                             ^                      ^",
        "                                          ^^         ",
        "             ^                                       ",
        "                                                     ",
        "                                                     ",
        "     " .. player.symbol .. "                                     " .. goblin.symbol .. "",
        "                                                     ",
        "             ^^                                      ",
        "                                                    ^",
        "                                                     ",
        "                                  ^                  ",
        "        ^                                            ",
        "                                                 ^   ",
        "#####################################################"
    }

    local map_grass_2 = {
        "#####################################################",
        "                                                     ",
        "      ^                                ^^            ",
        "                                                    ^",
        "                      ^                              ",
        "          ^                                          ",
        "                                                     ",
        "                                                     ",
        "     " .. player.symbol .. "                                      " .. goblin.symbol .. "",
        "                                                     ",
        "                                                     ",
        "            ^                                        ",
        "                                                    ^",
        "                                  ^                  ",
        "                     ^                               ",
        "                                        ^            ",
        "#####################################################"
    }

    local map_grass_3 = {
        "#####################################################",
        "       ^^                                            ",
        "                        ^             ^             ^",
        "                                                     ",
        "           ^             ^                           ",
        "                                        ^           ^",
        "                                                     ",
        "     ^^                                              ",
        "     " .. player.symbol .. "                                         " .. goblin.symbol .. "",
        "                                                     ",
        "                         ^               ^           ",
        "       ^^                                            ",
        "                    ^^                               ",
        "                                                     ",
        "                                                     ",
        "            ^^                          ^ ^          ",
        "#####################################################"
    }

    os.execute("clear")

    local map = {map_grass_1, map_grass_2, map_grass_3}

    math.randomseed(os.time())

    local choice = map[math.random(1, #map)]

    for i = 1, #choice do
        os.execute("sleep 0.09")
        print(choice[i])
    end
end

return scene