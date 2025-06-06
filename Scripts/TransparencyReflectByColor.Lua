local TARGET_COLOR = BrickColor.new("Really red")
local TARGET_TRANSPARENCY = 0.7
local TARGET_REFLECTANCE = 0.5
for _, obj in ipairs(game.Workspace:GetDescendants()) do
    if obj:IsA("BasePart") and obj.BrickColor == TARGET_COLOR then
        obj.Transparency = TARGET_TRANSPARENCY
        obj.Reflectance = TARGET_REFLECTANCE
    end
end
print("All 'Really red' parts updated: Transparency=" .. TARGET_TRANSPARENCY .. ", Reflectance=" .. TARGET_REFLECTANCE)