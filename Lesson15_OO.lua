Object = {
}
Object.id = 1
function Object:Test()
    print(self.id)
end

function Object:new()
    local obj = {}
    self.__index = self

    setmetatable(obj, self)
    return obj
end

local obj = Object:new()
print(obj.id)
obj:Test()
print("*********继承**********")
function Object:subClass(classname)
    _G[classname] = {}
    self.__index = self
    local obj = _G[classname]
    obj.base = self
    setmetatable(obj, self)
end

Object:subClass("Person")
print(Person.id)

local p = Person:new()
print(p.id)

print("*********多态**********")
--相同行为 不同表现
--相同方法 不同逻辑
Object:subClass("GameObject")
GameObject.posx = 0
GameObject.posy = 1
function GameObject:Move()
    self.posx = self.posx + 1
    self.posy = self.posy + 1
    print(self.posx, self.posy)
end

GameObject:subClass("Player")
function Player:Move()
    self.base.Move(self)
end

local p1 = Player:new()
p1:Move()
local p2 = Player:new()
p2:Move()
p1:Move()
