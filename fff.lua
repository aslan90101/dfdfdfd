local function createCircularSteps(centerPosition, stepHeight, stepRadius, stepCount)
    for i = 0, stepCount - 1 do
        local angle = (math.pi * 2 / stepCount) * i
        local x = math.cos(angle) * stepRadius
        local z = math.sin(angle) * stepRadius
        local y = stepHeight * i

        -- Создаем ступеньку
        local step = Instance.new("Part")
        step.Size = Vector3.new(4, 1, 4) -- Размер ступеньки
        step.Position = centerPosition + Vector3.new(x, y, z)
        step.Anchored = true
        step.BrickColor = BrickColor.new("Bright blue") -- Цвет ступеньки
        step.Material = Enum.Material.SmoothPlastic
        step.Parent = game.Workspace

        -- Создаем округлую форму ступеньки
        local mesh = Instance.new("CylinderMesh")
        mesh.Parent = step
    end
end

-- Параметры для ступенек
local centerPosition = Vector3.new(0, 0, 0) -- Центр создания ступенек
local stepHeight = 2 -- Высота каждой ступеньки
local stepRadius = 400 -- Радиус круга ступенек
local stepCount = 3000 -- Количество ступенек

-- Создаем ступеньки
createCircularSteps(centerPosition, stepHeight, stepRadius, stepCount)


