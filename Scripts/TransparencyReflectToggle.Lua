local DEFAULT_TRANSPARENCY = 0.5
local DEFAULT_REFLECTANCE = 0.3
for _, obj in ipairs(game.Workspace:GetDescendants()) do
    if obj:IsA("BasePart") then
        if obj.Transparency > 0 then
            obj.Transparency = 0
        else
            obj.Transparency = DEFAULT_TRANSPARENCY
        end
        if obj.Reflectance > 0 then
            obj.Reflectance = 0
        else
            obj.Reflectance = DEFAULT_REFLECTANCE
        end
    end
end
print("All parts toggled (transparency and reflectance)")