local DEFAULT_TRANSPARENCY = 0.5
local DEFAULT_REFLECTANCE = 0.3
for _, obj in ipairs(game.Workspace:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Transparency = DEFAULT_TRANSPARENCY
        obj.Reflectance = DEFAULT_REFLECTANCE
    end
end
print("All parts updated: Transparency=" .. DEFAULT_TRANSPARENCY .. ", Reflectance=" .. DEFAULT_REFLECTANCE)