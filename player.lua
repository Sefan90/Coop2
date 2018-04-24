local func = require 'func'

local player = {
    _VERSION     = '0.0.1',
    _DESCRIPTION = 'Player library',
    _URL         = 'http://foobar.page.or.repo.com',
    _LICENSE     = [[license text, or name/url for long licenses)]]
}
player.__index = player


local function moveplayer(player,x,y,dt,world)
	local actualX, actualY, cols, len = world:check(player, player.x+x, player.y+y, playerFilter)
	for i=1,len do
    	local other = cols[i].other
    	if other.name == 'Box' then
    		local actualX, actualY, cols, len = world:move(other, other.x + x, other.y + y,playerFilter)
  			other.x, other.y = actualX, actualY
    	end
    end
    local actualX, actualY, cols, len = world:move(player, player.x+x, player.y+y, playerFilter)
    player.x, player.y = actualX, actualY
    return player
end

function player.new(name,x,y,w,h,speed,up,left,down,right,nextlevel,reload,flying,level)
	local self = setmetatable({}, player)
	self.name = name
	self.x = x
	self.y = y
	self.w = w
	self.h = h
	self.speed = speed
	self.jump = true
	self.jumptime = 0
	self.up = up
	self.left = left
	self.down = down
	self.right = right
	self.nextlevel = nextlevel
	self.nextlevelpressed = false
	self.reload = reload
	self.reloadpressed = false
	self.flying = flying
	self.alive = true
	self.level = level
	self.sx = w/16
	self.sy = h/16
	return self
end

function player:move(dt,world)
	--Fixa typ om man trycker upp och står på en 
    if love.keyboard.isDown(self.left) then
    	self = moveplayer(self,-self.speed*dt,0,dt,world)
    end
    if love.keyboard.isDown(self.right) then
    	self = moveplayer(self,self.speed*dt,0,dt,world)
    end
    if self.flying == true then
	    if love.keyboard.isDown(self.up) then
	    	self = moveplayer(self,0,-self.speed*dt,dt,world)
	    end
	    if love.keyboard.isDown(self.down) then
	    	self = moveplayer(self,0,self.speed*dt,dt,world)
	    end
	else
		if love.keyboard.isDown(self.up) and self.jump == false then
			self.jumptime = self.jumptime - self.speed
			self.jump = true
		end
	    if love.keyboard.isDown(self.down) then
	    	self.jumptime = self.jumptime + self.speed*2*dt
	    end
	    if self.jumptime <= -self.speed/2 then
	    	self.jumptime = self.jumptime + self.speed/1.6*dt
		else
			self.jumptime = self.jumptime + self.speed*2*dt
		end
		local actualX, actualY, cols, len = world:move(self, self.x, self.y + self.jumptime*dt, playerFilter)
		if actualY == self.y then
			self.jump = false
			self.jumptime = 0
		end
	  	self.x, self.y = actualX, actualY
	end
end

function player:draw()
    love.graphics.setColor(255, 255, 255)
    love.graphics.draw(atlas.img,atlas.player,self.x, self.y,0,self.sx,self.sy)
end

function player:checkmap(world)
	local actualX, actualY, cols, len = world:check(self, self.x + 1, self.y, playerFilter)
	for i=1,len do
    	local other = cols[i].other
    	if other.id == 13 or other.id == 15 then
    		return 'end'
    	elseif other.id == 12 or other.id == 14 then
    		return 'start'
    	end
    end
    return ''
end

function player:outsideofmap(mapsize,tilesize,world)
	local actualX, actualY, cols, len = world:check(self, self.x + 1, self.y, playerFilter)
	for i=1,len do
    	local other = cols[i].other
    	if other.id == 0 then
    		return true
    	end
    end
	if self.x < 0 or self.x > mapsize.x*tilesize or self.y < 0 or self.y > mapsize.y*tilesize then
		return true
	end
	return false
end

playerFilter = function(item, other)
	if other.name == 'Trigger' then
		return 'cross'
	elseif other.name == 'Door' and other.active == false then
		return 'cross'
	end
	return 'touch'
end

return player
