local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.notBeEmpty tests", {

	when_checking_nil_collection = function()

		local success, e = pcall(function() should.notBeEmpty(nil) end)

		assert(success == false, e)

	end,

	when_checking_an_empty_collection = function()

		local collection = {}

		local success, e = pcall(function() should.notBeEmpty(collection) end)

		assert(success == false, e)

	end,

	when_checking_an_indexed_collection = function()

		local collection = {
			"a",
			"b",
			"c"
		}

		local success, e = pcall(function() should.notBeEmpty(collection) end)

		assert(success, e)

	end,

	when_checking_a_keyed_collection = function()

		local collection = {
			["x"] = "a",
			["y"] = "b",
			["z"] = "c"
		}

		local success, e = pcall(function() should.notBeEmpty(collection) end)

		assert(success, e)

	end,

})
