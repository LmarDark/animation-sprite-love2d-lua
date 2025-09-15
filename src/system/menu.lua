local text = require("src.system.text")
local action = require("src.system.action")

local menu = {}

function menu.show()
    text.show("\nWelcome to Knight's Journey!")
    text.show("\n[ 1. START GAME ]  [ 2. COMING SOON ]  [ 3. QUIT GAME ]")

    local keyPressed = io.read(1)

    if keyPressed == "1" then
        print("[ START GAME ]\n")

        menu.start_game()
    end

    if keyPressed == "2" then
        print("[ TWO ]\n")

        menu.commingsoon()
    end

    if keyPressed == "3" then
        print("[ QUIT GAME ]\n")

        menu.quit_game()
    end
end

function menu.start_game()
    return nil
end

function commingsoon()

end

function menu.quit_game()
    os.exit()
end

return menu