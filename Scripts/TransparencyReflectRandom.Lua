for _, obj in ipairs(game.Workspace:GetDescendants()) do
    if obj:IsA("BasePart") then
        obj.Transparency = math.random()
        obj.Reflectance = math.random()
    end
end
print("All parts randomized (transparency and reflectance)")