-- Maru Hub Standalone Loader (Luarmor V4 Bypass)
-- Usage: loadstring(game:HttpGet("RAW_URL_HERE"))()
-- Or copy-paste directly into executor

-- Step 1: Fetch auth token (_bsdata0) from CDN API
local _ok = pcall(function()
    local w = game:HttpGet("https://api.luarmor.net/files/v4/loaders/ec883860fc462fd9c9cd5009505825ec.lua")
    local b = w:match("(_bsdata0=%b{})")
    if b then loadstring(b)() end
end)
if not _ok or type(_bsdata0) ~= "table" then return end

-- Step 2: Set required globals
getgenv().key = "MARU736PSHVC6LBN1AJGBTSRGM"
getgenv().id = "1261551389260251146"
getgenv().Script_Mode = "Kaitun_Script"

-- Step 3: Load init file (cached locally or download from CDN)
local _d, _f = "static_content_170926", "static_content_170926/init-a8a80fe17b2-ocend.lua"
local c; pcall(function() c = readfile(_f) end)
if not c or #c < 2000 then
    c = game:HttpGet("https://cdn.luarmor.net/v4_init_ocendmz.lua")
    pcall(makefolder, _d)
    pcall(writefile, _f, c)
end
loadstring(c)()