---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gepeng.
--- DateTime: 2021/10/21 17:51
---

local z1 = {
    name = "robot1",
    part = "",
}

function z1:execute()
    changeState(self, "z1s1")
    return self
end

function z1:onEvent(event)
end

return z1