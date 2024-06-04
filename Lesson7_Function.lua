print("************函数************")
function F1()
    print("F1函数")
end

F1()
A = function()
    print("A函数")
end
A()
function F3(a)
    print(a)
end

F3(1)

B = function(b)
    print(b)
end
B(5)

function F4(a)
    return a, "123", true
end

a, b, c, d = F4(4)
print(a)
print(b)
print(c)
print(d)

C = function(a)
    return a, "123", true
end
a, b = C(12)
print(a)
print(b)

function F5(...)
    arg = { ... }
    for i = 1, #arg do
        print(arg[i])
    end
end

F5(1, 2, 3, 4, 5, 6, 7, 8, 9)

function F6()
    function F7()
        print("12333")
    end

    return F7
end

F77 = F6()
F77()

function SS()
    return function()
        print(123)
    end
end
Fuc =SS()
Fuc()