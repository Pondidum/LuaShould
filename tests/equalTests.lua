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

})
