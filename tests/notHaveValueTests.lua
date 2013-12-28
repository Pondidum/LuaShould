local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.notHaveValue tests", {

	when_checking_a_nil_table = function()

		local success, e = pcall(function() should.notHaveValue("item", nil) end)

		assert(success == false, e)

	end,

	when_checking_a_nil_value = function()

		local success, e = pcall(function() should.notHaveValue(nil, {}) end)

		assert(success, e)

	end,

	when_checking_a_table_for_an_existing_index_value = function()

		local t = {
			[1] = "a",
			[2] = "b",
		}

		local success, e = pcall(function() should.notHaveValue("b", t) end)

		assert(success == false, e)

	end,

	when_checking_a_table_for_a_non_existing_index_value = function()

		local t = {
			[1] = "a",
			[2] = "b",
		}

		local success, e = pcall(function() should.notHaveValue("h", t) end)

		assert(success, e)

	end,

	when_checking_a_table_for_an_existing_keyed_value = function()

		local t = {
			["x"] = "a",
			["y"] = "b",
		}

		local success, e = pcall(function() should.notHaveValue("a", t) end)

		assert(success == false, e)

	end,

	when_checking_a_table_for_a_non_existing_keyed_value = function()

		local t = {
			["x"] = "a",
			["y"] = "b",
		}

		local success, e = pcall(function() should.notHaveValue("h", t) end)

		assert(success, e)

	end,

})
