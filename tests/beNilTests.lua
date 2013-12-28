local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.beNil tests", {

	when_checking_a_nil_value = function()

		local success, e = pcall(function() should.beNil(nil) end)

		assert(success, e)

	end,

	when_checking_a_string_value = function()

		local success, e = pcall(function() should.beNil("test") end)

		assert(success == false, e)

	end,

	when_checking_a_table_value = function()

		local success, e = pcall(function() should.beNil({}) end)

		assert(success == false, e)

	end,

})
