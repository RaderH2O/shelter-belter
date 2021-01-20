local bump = require "libraries/bump/bump"
local Object = require "libraries/classic/classic"
local Stage = require "mainStage"
local game = {}

function game.load()
end

function game.update(dt)
    Stage:update()
end

function game.draw()
    Stage:draw()
end

return game