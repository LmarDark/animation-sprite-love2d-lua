local text = require("src.system.text")

local action = {}

function action.input(keyExpected)
    local keyPressed = io.read(1)
    if keyPressed == keyExpected then
        if keyExpected == "\n" then
            print("[ ENTER ]")
        end

        if keyExpected == "1" then
            print("[ ONE ]")
        end

        if keyExpected == "2" then
            print("[ TWO ]")
        end

        if keyExpected == "3" then
            print("[ THREE ]")
        end
    end
end

return action
