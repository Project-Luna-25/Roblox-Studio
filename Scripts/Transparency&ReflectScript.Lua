
local DEFAULT_TRANSPARENCY = 0.5
local DEFAULT_REFLECTANCE = 0.3
local MIN_TRANSPARENCY = 0
local MAX_TRANSPARENCY = 1
local MIN_REFLECTANCE = 0
local MAX_REFLECTANCE = 1
local function setPartProperties(partName, transparency, reflectance)
    local part = game.Workspace:FindFirstChild(partName)
    if not part then
        warn("Part '" .. partName .. "' not found in Workspace!")
        return false
    end
    part.Transparency = math.clamp(transparency or DEFAULT_TRANSPARENCY, MIN_TRANSPARENCY, MAX_TRANSPARENCY)
    part.Reflectance = math.clamp(reflectance or DEFAULT_REFLECTANCE, MIN_REFLECTANCE, MAX_REFLECTANCE)
    print("Set properties for part '" .. partName .. "': Transparency=" .. part.Transparency .. ", Reflectance=" .. part.Reflectance)
    return true
end

-- Batch update multiple parts
local function setMultiplePartsProperties(partsTable)
    for _, entry in ipairs(partsTable) do
        setPartProperties(entry.name, entry.transparency, entry.reflectance)
    end
end

-- Toggle transparency for a part
local function toggleTransparency(partName)
    local part = game.Workspace:FindFirstChild(partName)
    if part then
        if part.Transparency > 0 then
            part.Transparency = 0
        else
            part.Transparency = DEFAULT_TRANSPARENCY
        end
        print("Toggled transparency for '" .. partName .. "' to " .. part.Transparency)
    end
end

-- Toggle reflectance for a part
local function toggleReflectance(partName)
    local part = game.Workspace:FindFirstChild(partName)
    if part then
        if part.Reflectance > 0 then
            part.Reflectance = 0
        else
            part.Reflectance = DEFAULT_REFLECTANCE
        end
        print("Toggled reflectance for '" .. partName .. "' to " .. part.Reflectance)
    end
end

-- Randomize transparency and reflectance for a part
local function randomizeProperties(partName)
    local part = game.Workspace:FindFirstChild(partName)
    if part then
        part.Transparency = math.random()
        part.Reflectance = math.random()
        print("Randomized properties for '" .. partName .. "': Transparency=" .. part.Transparency .. ", Reflectance=" .. part.Reflectance)
    end
end

setPartProperties("Part", 0.5, 0.3)
