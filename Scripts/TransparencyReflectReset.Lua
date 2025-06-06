for _, obj in ipairs(game.Workspace:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Transparency = 0
        obj.Reflectance = 0
    end
end
print("All parts reset: Transparency=0, Reflectance=0")