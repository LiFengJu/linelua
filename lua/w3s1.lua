local w3s1 = {
    name = "w3 down"
}

function w3s1:execute(m)
    print("w3s1.execute")
    print(m.name, self.name)
    --print("三色灯状态", m.conf.plc:readI16(27,16))
    --print("订单号", m.conf.plc:readString(26,0,8))
end

function w3s1:exit(m)
    print("w3s1.exit is called")
end

function w3s1:onEvent(m, event)
    print("---------", m.name, event)
    changeState(m, "w3s2")
end

return w3s1