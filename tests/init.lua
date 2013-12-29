local ns = ...

local lunatic = loadfile("lib\\lunatic.lua")()
local should = loadfile("src\\should.lua")()

ns.tests = lunatic.new()
ns.should = should
