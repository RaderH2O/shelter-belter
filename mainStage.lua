local Object = require "libraries/classic/classic"
local Stage = Object:extend()

function Stage:new()
    self.items = {}
end

function Stage:add(item)
    table.insert(self.items, item)
end

function Stage:draw()
    for i=1, #self.items do
        self.items[i].draw()
    end
end

function Stage:update()
    for i=1, #self.items do
        self.items[i].update()
    end
end

local StageObj = Stage()

return StageObj