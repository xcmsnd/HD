local CoreGui = game:GetService("StarterGui")

CoreGui:SetCore("SendNotification", {
    Title = "确认身份",
    Text = "正在验证....",
    Duration = 3, 
    wait(3)
})

local StarterGui = game:GetService("StarterGui")
local Players = game:GetService("Players")
local WhitelistedPlayers = {
    ["eogvjsnso"] = true,
    ["eogvjsmso"] = true,
    ["CN_N00B6"] = true,
    ["cb114514sq"] = true,
    ["jhiyavjh"] = true,
    ["matcha_1121"] = true,
}

local function IsWhitelisted(player)
    return WhitelistedPlayers[player.Name] or false
end

local localPlayer = Players.LocalPlayer

local isLocalPlayerWhitelisted = IsWhitelisted(localPlayer)

if isLocalPlayerWhitelisted then
    StarterGui:SetCore("SendNotification", {
        Title = "白名单认证",
        Text = "玩家:"..localPlayer.Name.."，检测完毕尊贵的白名单玩家，稍后会加载脚本",
        Duration = 7,
    })
loadstring(game:HttpGet("https://raw.githubusercontent.com/xcmsnd/xcmsnd/refs/heads/main/9"))()
else
    localPlayer:Kick("你没有被加入白名单 请加QQ856201787向群主索要")
end
