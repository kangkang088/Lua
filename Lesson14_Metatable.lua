Meta = {}
MyTable = {}
setmetatable(MyTable, Meta)

Meta2 = {
    __tostring = function(t)
        return t.name
    end
}
MyTable2 = {
    name = "kangakng2"
}
setmetatable(MyTable2, Meta2)
print(MyTable2)

Meta3 = {
    __tostring = function(t)
        return t.name
    end,
    __call = function(t, s)
        print(t)
        print(s)
    end
}
MyTable3 = {
    name = "kangakng3"
}
setmetatable(MyTable3, Meta3)
MyTable3(1)

Meta4 = {
    __eq = function(t1, t2)
        return t1.age == t2.age
    end
}
MyTable4 = {
    age = 1
}
setmetatable(MyTable4, Meta4)
MyTable5 = {
    age = 2
}
setmetatable(MyTable5, Meta4)

print(MyTable4 == MyTable5)

Meta6 = {
    age = 1,
    __index = { age = 5 }
}
MyTable6 = {}
setmetatable(MyTable6, Meta6)

print(MyTable6.age)

Meta0 = {
    __newindex = {}
}
MyTable0 = {}
setmetatable(MyTable0, Meta0)
MyTable0.age = 1
print(MyTable0.age)
