local ns = ...

local tests = ns.tests
local should = ns.should

tests.add("should.equal tests", {

	when_checking_two_nil_parameters = function()

		local result
		local success, e = pcall(function() result = should.equal(nil, nil) end)

		assert(success, e)
		assert(result == true)

	end,

	when_checking_parameter_with_expected_nil = function()

		local result
		local success, e = pcall(function() result = should.equal(nil, {}) end)

		assert(success, e)
		assert(result == false)

	end,

	when_checking_parameter_with_actual_nil = function()

		local result
		local success, e = pcall(function() result = should.equal({}, nil) end)

		assert(success, e)
		assert(result == false)

	end,
})
