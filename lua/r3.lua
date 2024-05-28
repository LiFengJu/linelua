---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gepeng.
--- DateTime: 2021/10/21 17:51
---

local r3 = {
    s1 = require("r3s1"),
    name = "robot 3",
    bus = "516.am",
    currentState  = nil
}

function r3:execute(line)
    print(self.name)
    self.line = line
    changeState(self, "r3s1")
end


function r3:onEvent(event)
    print("onevent")
    --changeState(self, "r3s1")
    --require("nats").SubscribeFunc(self.bus, "am:r1")
end

return r3