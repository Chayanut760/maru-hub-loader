-- Maru Hub Standalone Loader
-- Bypasses Luarmor V4 HWID lock
-- Usage: loadstring(game:HttpGet("RAW_GITHUB_URL"))()

-- Step 1: Fetch fresh _bsdata0 from API
local _bs_ok = pcall(function()
    local wrapper = game:HttpGet("https://api.luarmor.net/files/v4/loaders/ec883860fc462fd9c9cd5009505825ec.lua")
    local bs = wrapper:match("(_bsdata0=%b{})")
    if bs then loadstring(bs)() end
end)

if not _bs_ok or type(_bsdata0) ~= "table" then
    warn("[Maru Loader] Failed to fetch _bsdata0 from API")
    return
end

-- Step 2: Set globals
getgenv().key = "MARU736PSHVC6LBN1AJGBTSRGM"
getgenv().id = "1261551389260251146"
getgenv().Script_Mode = "Kaitun_Script"

-- Step 3: Load and execute init file
local init_url = "https://cdn.luarmor.net/v4_init_ocendmz.lua"
local cache_dir = "static_content_170926"
local cache_file = cache_dir .. "/init-a8a80fe17b2-ocend.lua"

local content
pcall(function() content = readfile(cache_file) end)
if not content or #content < 2000 then
    content = game:HttpGet(init_url)
    pcall(makefolder, cache_dir)
    pcall(writefile, cache_file, content)
end

loadstring(content)()