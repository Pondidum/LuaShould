local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.beTrue tests", {

	when_checking_a_true_value = function()

		local success, e = pcall(function() should.beTrue(true) end)

		assert(success, e)

	end,

	when_checking_a_false_value = function()

		local success, e = pcall(function() should.beTrue(false) end)

		assert(success == false, e)

	end,

	when_checking_a_nil_value = function()

		local success, e = pcall(function() should.beTrue(nil) end)

		assert(success == false, e)

	end,

	when_checking_a_table_value = function()

		local success, e = pcall(function() should.beTrue({}) end)

		assert(success == false, e)

	end,

})
