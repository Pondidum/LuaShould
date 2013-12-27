local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.equal tests", {

	when_checking_two_nil_parameters = function()

		local success, e = pcall(function() should.equal(nil, nil) end)

		assert(success, e)

	end,

	when_checking_parameter_with_expected_nil = function()

		local success, e = pcall(function() should.equal(nil, {}) end)

		assert(success == false, e)

	end,

	when_checking_parameter_with_actual_nil = function()

		local success, e = pcall(function() should.equal({}, nil) end)

		assert(success == false, e)

	end,

	when_checking_an_equal_parameter = function()

		local item = {}

		local success, e = pcall(function() should.equal(item, item) end)

		assert(success == true, e)

	end,

	when_checking_an_equivalent_parameter = function()

		local item1 = {}
		local item2 = {}

		local success, e = pcall(function() should.equal(item1, item2) end)

		assert(success == false, e)

	end,

})
