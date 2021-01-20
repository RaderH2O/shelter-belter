local bump = require "libraries/bump/bump"
local suit = require "libraries/suit"
local Object = require "libraries/classic/classic"
local mainMenu = require "mainMenu"
local game = require "game"

function love.load()
    game.load()
    mainMenu.load()
end

function love.update(dt)
    if not mainMenu.isGameStarted() then
        mainMenu.update(dt)
    else
        game.update(dt)
    end
end

function love.draw()
    if not mainMenu.isGameStarted() then
        mainMenu.draw()
    else
        game.draw()
    end
end


function love.textedited(text, start, length)
    -- for IME input
    suit.textedited(text, start, length)
end

function love.textinput(t)
    -- forward text input to SUIT
    suit.textinput(t)
end

function love.keypressed(key)
    -- forward keypresses to SUIT
    suit.keypressed(key)
end
