local function SafeGet(url)
    local success, response = pcall(function()
        return game:HttpGet(url)
    end)
    if success then
        return response
    else
        warn("❌ Failed to GET:", url, "| Error:", response)
        return nil
    end
end

local RayfieldSource = SafeGet("https://raw.githubusercontent.com/SiriusSoftwareLtd/Rayfield/main/source.lua")
if not RayfieldSource then
    error("Rayfield failed to load - check your connection or Rayfield's URL.")
end

local Rayfield = loadstring(RayfieldSource)()

local Window = Rayfield:CreateWindow({
    Name = "Pro Hub - Universal Hub",
    LoadingTitle = "Pro Hub",   
    LoadingSubtitle = "by Mike",
    Theme = "Default",
    ConfigurationSaving = {
        Enabled = true,
        FileName = "ProHubConfig"
    },

    KeySystem = false, 
    KeySettings = {
        Title = "Pro Hub",
        Subtitle = "Key System",
        Note = "None",
        FileName = "Key",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = {"Pro_1092"}
    }
})

-- 📜 Script Tab
local ScriptTab = Window:CreateTab("Script", 4483362458)

-- 🔥 Destroy Toggle (INSIDE Script Tab)
local DestroyOnExecute = false
ScriptTab:CreateToggle({
    Name = "Destroy Hub on Script Execution",
    CurrentValue = false, 
    Flag = "DestroyToggle",
    Callback = function(Enabled)
        DestroyOnExecute = Enabled
    end
})

local scriptUrls = {
    ["Universal - Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["Universal - Dex Explorer"] = "https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua",
    ["Universal - Simple Spy"] = "https://raw.githubusercontent.com/exxtremestuffs/SimpleSpySource/master/SimpleSpy.lua",
    ["Blox Fruit - SPEED HUB X"] = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",
    ["Blox Fruit - REDZ Hub"] = "https://raw.githubusercontent.com/newredz/BloxFruits/refs/heads/main/Source.luau",
    ["Fich - SPEED HUB X"] = "https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua",
    ["Fich - Raito Hub"] = "https://raw.githubusercontent.com/Efe0626/RaitoHub/refs/heads/main/Script",
    ["Arsenal - THAIBAO"] = "https://raw.githubusercontent.com/tbao143/thaibao/main/TbaoHubArsenal",
    ["Lootify - QUARTYZ"] = "https://auth.quartyz.com/scripts/Loader.lua",
    ["Jujutsu Infinite - Speed Hub X"] = "https://raw.githubusercontent.com/AhmadV99/Script-Games/refs/heads/main/Jujutsu%20Infinite.lua",
    ["Shindo Life - CORRUPT"] = "https://raw.githubusercontent.com/Corrupt2625/Revamps/main/SpyHub.lua",
    ["Ro Ghoul - Ro-ghoul"] = "https://raw.githubusercontent.com/z4gs/scripts/master/Ro-Ghoul%20Auto%20Farm.lua",
    ["Ro Ghoul - Porry Hub"] = "https://raw.githubusercontent.com/PorryDepTrai/exploit/main/DashBoostSolora.lua",
    ["Ninja Legend - Horizon"] = "https://raw.githubusercontent.com/Shadetamic/horizon/main/loadstring.lua",
    ["Survive the Killer - ChairWare"] = "https://raw.githubusercontent.com/Milan08Studio/ChairWare/main/main.lua",
    ["Blue Lock - THAIBAO"] = "https://raw.githubusercontent.com/tbao143/game/refs/heads/main/TbaoHubBlueLockRivals",
    ["Blade Ball - Frostware"] = "https://raw.githubusercontent.com/Fsploit/Frostware-/refs/heads/main/Bypass.lua",
}

local function createSection(title)
    ScriptTab:CreateSection(title)
end

local function createScriptButton(fullName)
    ScriptTab:CreateButton({
        Name = fullName,
        Callback = function()
            local url = scriptUrls[fullName]
            if url then
                local scriptSource = SafeGet(url)
                if scriptSource then
                    loadstring(scriptSource)()
                    Rayfield:Notify({
                        Title = "✅ Executed",
                        Content = "Successfully executed: " .. fullName,
                        Duration = 5
                    })

                    -- 🚀 Auto-Destroy if Enabled
                    if DestroyOnExecute then
                        Rayfield:Destroy()
                    end
                else
                    Rayfield:Notify({
                        Title = "❌ Failed to Load",
                        Content = "Could not fetch: " .. fullName,
                        Duration = 5
                    })
                end
            else
                warn("❌ Missing URL for:", fullName)
            end
        end
    })
end

-- Sections & Buttons

createSection("🌐 Universal")
createScriptButton("Universal - Infinite Yield")
createScriptButton("Universal - Dex Explorer")
createScriptButton("Universal - Simple Spy")

createSection("🍎 Blox Fruit")
createScriptButton("Blox Fruit - SPEED HUB X")
createScriptButton("Blox Fruit - REDZ Hub")

createSection("🎣 Fich")
createScriptButton("Fich - SPEED HUB X")
createScriptButton("Fich - Raito Hub")

createSection("🔫 Arsenal")
createScriptButton("Arsenal - THAIBAO")

createSection("🧰 Lootify")
createScriptButton("Lootify - QUARTYZ")

createSection("👀 Jujutsu Infinite")
createScriptButton("Jujutsu Infinite - Speed Hub X")

createSection("📜 Shindo Life")
createScriptButton("Shindo Life - CORRUPT")

createSection("👹 Ro Ghoul")
createScriptButton("Ro Ghoul - Ro-ghoul")
createScriptButton("Ro Ghoul - Porry Hub")

createSection("🥋 Ninja Legend")
createScriptButton("Ninja Legend - Horizon")

createSection("🔪 Survive the Killer")
createScriptButton("Survive the Killer - ChairWare")

createSection("⚽ Blue Lock")
createScriptButton("Blue Lock - THAIBAO")

createSection("⚔️ Blade Ball")
createScriptButton("Blade Ball - Frostware")
