local bump = require 'bump'
local sti = require 'sti'
local func = require 'func'
local player = require 'player'
local go = require 'gameobjects'

local game = {}

local mapsize = {x=24,y=18}
local width, height = love.graphics.getDimensions()
local tilesize = func.getTileSize(width,height,mapsize) 
local world = bump.newWorld(tilesize)
local tx = (width-tilesize*mapsize.x)/2
local ty = (height-tilesize*mapsize.y)/2
local esc = {button = 'escape', active = false}
local players = nil
local maps = nil
local objects = nil

function game.load()
    maps = {sti('maps/level0.lua', {'bump'}),sti('maps/level02.lua', {'bump'})}
    --local layer = maps[1]:addCustomLayer("Sprites", 10)
    local p1 = func.getmapgobjects(maps[1],'P1')[1]
    local p2 = func.getmapgobjects(maps[2],'P2')[1]
    players = {
        player.new('p1',p1.x*(tilesize/18)+tx,p1.y*(tilesize/18)+ty,tilesize,tilesize,tilesize*3,'w','a','s','d','q','r',true,-1), 
        player.new('p2',p2.x*(tilesize/18)+tx,p2.y*(tilesize/18)+ty,tilesize,tilesize,tilesize*3,'up','left','down','right','p','i',false,-1)
    }
    maps[1]:bump_init(world,tx,ty,tilesize/18,tilesize/18)
    maps[2]:bump_init(world,tx,ty,tilesize/18,tilesize/18)
    world:add(players[1],players[1].x,players[1].y,players[1].w,players[1].h)
    world:add(players[2],players[2].x,players[2].y,players[2].w,players[2].h)
    objects = go.new(maps,tilesize,tx,ty)
    world = objects:bump_init(world)
    maps[1]:removeLayer("objects")
    maps[2]:removeLayer("objects")
end

function game.update(dt)
    maps[1]:update(dt)
    maps[2]:update(dt)
    players[1]:move(dt,world)
    players[2]:move(dt,world)
    objects:update(dt,world)
end

function game.draw()
    myShader:send('color1', {147,100,209,255})
    myShader:send('color2', {108,70,158,255})
    myShader:send('color3', {77,47,117,255})
    myShader:send('color4', {48,28,76,255})
    love.graphics.setShader(myShader)
    maps[1]:draw(tx/(tilesize/18),ty/(tilesize/18),tilesize/18,tilesize/18)
    maps[2]:draw(tx/(tilesize/18),ty/(tilesize/18),tilesize/18,tilesize/18)
    players[1]:draw()
    players[2]:draw()
    love.graphics.setShader()
    love.graphics.print(players[2].x..' '..players[2].y, 0, 0)
    objects:draw()
end


function game.keypressed(key)
    for i = 1, #players do
        if key == players[i].nextlevel then
            players[i].nextlevelpressed = true
        elseif key == players[i].reload then
            players[i].reloadpressed = true
        end
    end
    if key == esc.button then
        esc.active = not esc.active
    end
    if esc.active == true then
        if (love.keyboard.isDown(players[1].up) or love.keyboard.isDown(players[2].up)) and ingamemenu.selected ~= 0 then
            ingamemenu.selected = ingamemenu.selected-1
        elseif (love.keyboard.isDown(players[1].down) or love.keyboard.isDown(players[2].down)) and ingamemenu.selected ~= 3 then
            ingamemenu.selected = ingamemenu.selected+1
        end
    end
end

function game.keyreleased(key)
    for i = 1, #players do
        if key == players[i].nextlevel then
            players[i].nextlevelpressed = false
        elseif key == players[i].reload then
            players[i].reloadpressed = false
        end
    end
end

--[[
function game.resize(w, h)
    tilesize = func.getTileSize(w,h,mapsize)
    tx = (w-tilesize*mapsize.x)/2
    ty = (h-tilesize*mapsize.y)/2
    maps[1]:bump_removeLayer(2,world)
    maps[1]:bump_init(world,tx,ty,tilesize/18,tilesize/18)
    maps[2]:bump_removeLayer(2,world)
    maps[2]:bump_init(world,tx,ty,tilesize/18,tilesize/18)
    --Fixa kod som funkar för player och object här
    local scale = {w = w/width, h = h/height}
    world:update(players[1],players[1].x*scale.w,players[1].y*scale.h,players[1].w*scale.w,players[1].h*scale.h)
end
]]--

return game