local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.beFalse tests", {

	when_checking_a_true_value = function()

		local success, e = pcall(function() should.beFalse(true) end)

		assert(success == false, e)

	end,

	when_checking_a_false_value = function()

		local success, e = pcall(function() should.beFalse(false) end)

		assert(success, e)

	end,

	when_checking_a_nil_value = function()

		local success, e = pcall(function() should.beFalse(nil) end)

		assert(success == false, e)

	end,

	when_checking_a_table_value = function()

		local success, e = pcall(function() should.beFalse({}) end)

		assert(success == false, e)

	end,

})
