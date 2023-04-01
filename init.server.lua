task.wait(3)
local part = workspace["1"]
local part1pos = part.Position
local toMoveTo = part1pos + Vector3.new(0,0,-12)
local part2 = part:Clone()
part2.Parent = workspace
game:GetService"TweenService":Create(part2,TweenInfo.new(2.4),{Position = toMoveTo}):Play()
task.wait(1.001)
task.defer(function()
    while true do
        task.wait(0.1)
        part2.Color = Color3.fromRGB(math.random(0,255), math.random(0,255), math.random(0,255))
    end
end)
local att1 = Instance.new("Attachment")
local att2 = Instance.new("Attachment")
att1.Parent = part
att2.Parent = part2
local beam = Instance.new("Beam")
beam.Attachment0 = att1
beam.Attachment1 = att2
beam.Width0 = 0.5
beam.Width1 = 0.2
beam.Enabled = true
beam.Parent = part
local part3 = part2:Clone()
part3.Parent = workspace
local tomoveto2 = part3.Position + Vector3.new(0.2,0,3)
local scale = part3.Size + Vector3.new(math.random(1,2),math.random(0.2,math.abs(-3)),math.random(0.2,2))
game:GetService"TweenService":Create(part3,TweenInfo.new(1),{Position = tomoveto2}):Play()
game:GetService"TweenService":Create(part3,TweenInfo.new(1),{Size = scale}):Play()
task.wait(0.02)
task.defer(function()
    while true do
        task.wait()
        part3.Orientation = part3.Orientation + Vector3.new(0,2,0)
    end
end)
local part4 = part3:Clone()
part4.Parent = workspace
local movetonew1 = part4.Position + Vector3.new(math.random(5,math.abs(-7.2)),math.random(2.2,6),math.random(2,math.abs(-4.23))) + Vector3.new(0.23,10,0.1)
local rottonew = part4.Orientation + Vector3.new(math.random(0.2,2),0.3,math.random(1,2.1))
game:GetService"TweenService":Create(part4,TweenInfo.new(1),{Position = movetonew1}):Play()
game:GetService"TweenService":Create(part4,TweenInfo.new(1),{Orientation = rottonew}):Play()
game:GetService"TweenService":Create(part4,TweenInfo.new(1),{Size = part4.Size + Vector3.new(3,0,0)}):Play()
local att3 = Instance.new("Attachment")
local att4 = Instance.new("Attachment")
att3.Parent = part4
att4.Parent = part3
local beam1 = Instance.new("Beam")
beam1.Attachment0 = att3
beam1.Attachment1 = att4
beam1.Width0 = 2
beam1.Width1 = 2
beam1.Enabled = true
beam1.Parent = part4