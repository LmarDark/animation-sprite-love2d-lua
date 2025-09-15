local menu = require("src.system.menu")
local scene = require("src.scenes.game")
local text = require("src.system.text")
local action = require("src.system.action")
local choice = require("src.system.choice")

local engine = {}
local running = true
local menuBool = false

function engine.run()
    while running do
        if menuBool == false then
            menu.show()
            menuBool = true
        end

        
        scene.draw()
    end
end

return engine