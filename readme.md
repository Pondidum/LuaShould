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
should.haveKey(1, t)
should.haveValue("a", t)
should.notHaveKey(4, t)
should.notHaveValue("s", t)
```

#Notes

* `.haveCount` will count the actual number of elements in a table, and ignores gaps in indexed tables.



[1]: https://github.com/erichexter/Should