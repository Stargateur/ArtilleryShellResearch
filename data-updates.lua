local i = 1
while true do
  local technology = data.raw.technology["physical-projectile-damage-" .. i]

  if not technology then
    break
  end

  if technology.effects then
    for _, effect in ipairs(technology.effects) do
      if effect.type == "ammo-damage" and effect.ammo_category == "cannon-shell" then
        table.insert(technology.effects, {
          type = "ammo-damage",
          ammo_category = "artillery-shell",
          modifier = effect.modifier
        })
      end
    end
  end

  i = i + 1
end
