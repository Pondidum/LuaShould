#LuaShould

A small assertion library, loosly based on [Should][1].

#Example Usage

```lua
local should = require("should")

local t = {
	"a",
	"b"
}

should.haveCount(2, t)


```



[1]: https://github.com/erichexter/Should