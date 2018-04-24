local func = require 'func'

local gameobjects = {
    _VERSION     = '0.0.1',
    _DESCRIPTION = 'Player library',
    _URL         = 'http://foobar.page.or.repo.com',
    _LICENSE     = [[license text, or name/url for long licenses)]]
}
gameobjects.__index = gameobjects

function gameobjects.new(maps,tilesize,tx,ty)
    local self = setmetatable({}, gameobjects) 
    self.tilesize = tilesize
    self.tx = tx or 0
    self.ty = ty or 0
    self.maps = maps
    self.objects = {
        func.getmapgobjects(maps[1],'Trigger'),
        func.getmapgobjects(maps[2],'Trigger'),
        func.getmapgobjects(maps[1],'Box'),
        func.getmapgobjects(maps[2],'Box'),
        func.getmapgobjects(maps[1],'Enemy'),
        func.getmapgobjects(maps[2],'Enemy'),
        func.getmapgobjects(maps[1],'Door'),
        func.getmapgobjects(maps[2],'Door')
    }
    print(#self.objects)
    return self
end

function gameobjects:bump_init(world)
    for i = 1, #self.objects do
        for j = 1, #self.objects[i] do
            world:add(self.objects[i][j],self.objects[i][j].x*(self.tilesize/18)+self.tx,self.objects[i][j].y*(self.tilesize/18)+self.ty,self.tilesize,self.tilesize)
        end
    end
    return world
end

function gameobjects:update(dt,world)
    for i = 1, #self.objects do
        for j = 1, #self.objects[i] do
            self.objects[i][j].x, self.objects[i][j].y, self.objects[i][j].w, self.objects[i][j].h = world:getRect(self.objects[i][j])
        end
    end
    local triggersactive = true
    for i = 1, 2 do
        for j = 1, #self.objects[i] do
            local actualX, actualY, cols, len = world:check(self.objects[i][j], self.objects[i][j].x, self.objects[i][j].y,playerFilter)
            if len > 0 then
                self.objects[i][j].properties.active = not self.objects[i][j].properties.starting
                if not self.objects[i][j].properties.starting == false then
                    triggersactive = false
                end
            else
                self.objects[i][j].properties.active = self.objects[i][j].properties.starting
                if self.objects[i][j].properties.starting == false then
                    triggersactive = false
                end
            end
        end
    end

    for i = 3, 4 do
        for j = 1, #self.objects[i] do
            if self.objects[i][j].properties.gravity == true then
                local actualX, actualY, cols, len = world:move(self.objects[i][j], self.objects[i][j].x, self.objects[i][j].y + self.tilesize*dt,playerFilter)
                self.objects[i][j].x, self.objects[i][j].y = actualX, actualY
            end
        end
    end

    for i = 5, 6 do

    end

    for i = 7, 8 do
        for j = 1, #self.objects[i] do
            if triggersactive == true then
                self.objects[i][j].properties.active = not self.objects[i][j].properties.starting
            else
                self.objects[i][j].properties.active = self.objects[i][j].properties.starting
            end
        end
    end
end

function gameobjects:draw()
    love.graphics.setColor(255, 0, 0, 255)
    for i = 1, #self.objects do
        for j = 1, #self.objects[i] do
            if self.objects[i][j].properties.active == nil or self.objects[i][j].properties.active == false then
                love.graphics.rectangle('fill', self.objects[i][j].x,self.objects[i][j].y,self.objects[i][j].w,self.objects[i][j].h)
            end
        end
    end
    love.graphics.setColor(255, 255, 255, 255)
end

return gameobjects