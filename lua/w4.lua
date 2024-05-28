---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by gepeng.
--- DateTime: 2021/10/21 17:51
---

local w4 = {
    s1 = require("w4s1"),
    s2 = require("w4s2"),
    name = "w4",
    part = "",
    currentState  = null
}

function w4:execute(line)
    print(self.name)
    self.line = line
    changeState(self, "w4s1")
end

function w4:onEvent(event)
    print(event)
    --print("三色灯状态", event.conf.plc:readI16(27,16))

    --print("target", event.target)
    --print("data", event.data)
    --print("data.value", event.data.value)
    --print("self.currentState", self.currentState.name)
    if self.currentState ~= null then
        self.currentState:onEvent(self, event)
    end
end

return w4