-- Maru Hub Loader (HWID Bypass)
-- Works on any executor with hookfunction support
-- Usage: loadstring(game:HttpGet("https://raw.githubusercontent.com/Chayanut760/maru-hub-loader/master/maru_loader.lua"))()

local _h = "46b843749979fa8447241ea5d74cc7b9dd4f9efcd90a1feb3b2523e1c6758f070be4e5b1144805cbd511741a8716211bb83b6ac6a44dc7a7082020aae65a7da0"
if gethwid then hookfunction(gethwid, newcclosure(function() return _h end)) end
if get_hwid then hookfunction(get_hwid, newcclosure(function() return _h end)) end

getgenv().key = "MARUAZTDNK9FRVXE2CIWUY5RXQ"
getgenv().id = "1261551389260251146"
getgenv().Script_Mode = "Kaitun_Script"

loadstring(game:HttpGet("https://cdn.maruhub.online/s/pc"))()