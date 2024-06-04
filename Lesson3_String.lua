print("************String************")
str = "Double"
str2 = 'Single'
print(#str)
print(#str2)
s = '123\n123'
print(s)
ss = [[1
2
3]]
print(ss)
print("123" .. "123")
print(string.format("123%s", '1111111'))
print("******************method************")
str = "abcDEfgDE"
print(string.upper(str))
print(string.lower(str))
print(string.reverse(str))
print(string.find(str, "cDE"))
print(string.sub(str, 3, 5))
print(string.rep(str, 2))
print(string.gsub(str, "DE", "**"))

print(str)
a = string.byte("Lua",1)
print(a)
print(string.char(a))
