local ns = ...

local lunatic = loadfile("lib\\lunatic.lua")()
local should = require("should")

ns.tests = lunatic.new()
ns.should = should
