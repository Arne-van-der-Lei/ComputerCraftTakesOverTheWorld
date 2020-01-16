-- downloads the lua start file from githup and keeps it up to date

local fileToDl = "Main.lua"
local linkToGit = "https://raw.github.com/Arne-van-der-Lei/ComputerCraftTakesOverTheWorld/master/"
local localFileLoc = "./Main/"

if localFileLoc ~= nil and not fs.isDir(localFileLoc) then fs.makeDir(localFileLoc) end

local content = http.get(linkToGit .. fileToDl)
local file = fs.open(localFileLoc .. fileToDl,"w")
file.write(content.readAll())
file.close()

shell.run(localFileLoc .. fileToDl)
