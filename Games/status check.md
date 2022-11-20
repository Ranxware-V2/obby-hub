# Status Check
```lua
getgenv().Loaded = true

local status = getgenv().Loaded
if status == false or not status then
	error("Obby hub not loaded!",2)
	return false
end
```