local part = script.Parent
local plr = game.Players.LocalPlayer
part.Touched:Connect(function(hit)
      if hit.Parent.Name == plr.Name then
          part:Destroy()
      end
