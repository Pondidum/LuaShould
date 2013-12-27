local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.notHaveKey tests", {

	when_checking_a_nil_table = function()

		local success, e = pcall(function() should.notHaveKey("item", nil) end)

		assert(success == false, e)

	end,

	when_checking_a_nil_key = function()

		local success, e = pcall(function() should.notHaveKey(nil, {}) end)

		assert(success, e)

	end,

	when_checking_a_table_for_an_existing_index_key = function()

		local t = {
			[1] = "a",
			[2] = "b",
		}

		local success, e = pcall(function() should.notHaveKey(1, t) end)

		assert(success == false, e)

	end,

	when_checking_a_table_for_a_non_existing_index_key = function()

		local t = {
			[1] = "a",
			[2] = "b",
		}

		local success, e = pcall(function() should.notHaveKey(5, t) end)

		assert(success, e)

	end,

	when_checking_a_table_for_an_existing_keyed_key = function()

		local t = {
			["x"] = "a",
			["y"] = "b",
		}

		local success, e = pcall(function() should.notHaveKey("x", t) end)

		assert(success == false, e)

	end,

	when_checking_a_table_for_a_non_existing_keyed_key = function()

		local t = {
			["x"] = "a",
			["y"] = "b",
		}

		local success, e = pcall(function() should.notHaveKey("z", t) end)

		assert(success, e)

	end,
})
