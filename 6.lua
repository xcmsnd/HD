local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "TextLabel"
LBL.TextColor3 = Color3.new(1, 1, 1)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "『丁真脚本』", HidePremium = false, SaveConfig = true,IntroText = "『丁真脚本』", ConfigFolder = "『丁真脚本』"})

game:GetService("StarterGui"):SetCore("SendNotification",{ Title = "丁真脚本"; Text ="吉吉国王"; Duration = 4; })

local about = Window:MakeTab({
    Name = "靓坤",
    Icon = "rbxassetid://16060333448",
    PremiumOnly = false

})

about:AddParagraph("作者QQ群856201787")
about:AddParagraph("qq群856201787")
about:AddParagraph("作者靓坤")
about:AddParagraph("顶尖脚本集")

local Tab =Window:MakeTab({

	Name = "作者QQ群这里",

	Icon = "rbxassetid://16060333448",

	PremiumOnly = false

})

Tab:AddButton({

	Name = "复制作者QQ群",

	Callback = function()

     setclipboard("856201787")

  	end

})

Tab:AddButton({

	Name = "复制QQ群",

	Callback = function()

     setclipboard("856201787")

  	end

})

OrionLib:MakeNotification({
	Name = "靓坤",
	Content = "欢迎使用顶尖脚本",
	Image = "rbxassetid://16060333448",
	Time = 2

})

local Tab = Window:MakeTab({
	Name = "黑洞脚本",
	Icon = "rbxassetid://16060333448",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "美女封面黑洞",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/lililiugg/main/jm114514.lua"))()
    end
})

Tab:AddButton({
	Name = "传送到别人身上黑洞",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/qPcm2zPy"))()
    end
})

Tab:AddButton({
	Name = "环形黑洞",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()
    end
})

Tab:AddButton({
	Name = "彩虹黑洞",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/LHsrytuj"))()
    end
})
