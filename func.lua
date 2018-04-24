local func = {}

function func.shallowCopy(original)
    local copy = {}
    for key, value in pairs(original) do
        copy[key] = value
    end
    return copy
end

function func.getTileSize(width,height,mapsize)
    if width/mapsize.x < height/mapsize.y then
        return width/mapsize.x
    else
        return height/mapsize.y
    end
end

function func.tablecheck(table,value)
	for i, v in ipairs(table) do
  		if v == value then
  			return true
  		end
	end
	return false
end

function func.mod(a,b)
  return a - math.floor(a/b)*b
end

function func.getmapgobjects(map,name)
    local temp = {}
    for k, object in pairs(map.objects) do
        if object.name == name then
            table.insert(temp,object)
        end
    end
    return temp
end

return func