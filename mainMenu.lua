local suit = require "libraries/suit"
local mainMenu = {}
local gameStarted = false

-- make love use font which support CJK text
function mainMenu.load()
    local font = love.graphics.newFont("Hasklug Black Nerd Font Complete Mono.otf", 20)
    love.graphics.setFont(font)
    backgroundImage = love.graphics.newImage("res/mainMenu/background.jpeg")
end

-- all the UI is defined in love.update or functions that are called from here
function mainMenu.update(dt)
    suit.layout:reset(320-100, 100)
    if suit.Button("Start", suit.layout:row(350,30)).hit then
        gameStarted = true
    end
    suit.layout:row(350,10)
    if suit.Button("Quit", suit.layout:row(350,30)).hit then
        love.event.quit()
    end
end

function mainMenu.draw()
    love.graphics.draw(backgroundImage, 0, 0, 0, 2, 2)
    -- draw the gui
    suit.draw()
end

function mainMenu.isGameStarted()
    return gameStarted
end

return mainMenu