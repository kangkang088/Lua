Func = function()
    print("协程函数")
end

Co1 = coroutine.create(Func)
print(type(Co1))
a = coroutine.resume(Co1)
print(a)
Co2 = coroutine.wrap(Func)
print(type(Co2))
Co2()
Func2 = function()
    local i = 1
    while true do
        print(i)
        i = i + 1
        coroutine.yield(i)
    end
end
Co3 = coroutine.create(Func2)
IsOk, Item = coroutine.resume(Co3)
print(IsOk,Item)
IsOk, Item = coroutine.resume(Co3)
print(IsOk,Item)
IsOk, Item = coroutine.resume(Co3)
print(IsOk,Item)
print("****")
Co4=coroutine.wrap(Func2)
print("返回值"..Co4())
print("返回值"..Co4())
print("返回值"..Co4())

