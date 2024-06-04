print("********字典*********")
A = { ["name"] = "kangkang", ["age"] = 14, ["1"] = 5 }
print(A["name"])
print(A["age"])
A["sex"] = false
print(A.sex)
for key, value in pairs(A) do
    print(key, value)
end
print("选择排序")
Sort = { 1, 3, 5, 7, 9, 11 }

for i = 1, #Sort do
    max = i
    for j = i + 1, #Sort do
        if Sort[j] > Sort[max] then
            max = j
        end
    end
    if max ~= i then
        temp = Sort[max]
        Sort[max] = Sort[i]
        Sort[i] = temp
    end
end
for i = 1, #Sort do
    print(Sort[i])
end
print("********类和结构体********")
Student = {
    age = 1,
    sex = true,
    name = "kangkang",
    A = function(a)
        return a
    end,
    Learn = function()
        print("好好学习天天向上")
    end
}
function Student:Test()
    print("11" .. self.age)
end

Student.score = 15
Student.Speak1 = function()
    print("说话1")
end
function Student.Speak2()
    print("说话2")
end

print(Student.name)
print(Student.score)
Student.Learn()
Student.Speak1()
Student.Speak2()

print("*****************")

T1 = { { age = 1, name = "123" }, { age = 2, name = "345" } }
T2 = { name = "kangkang", sex = true }

--插入
print(#T1)
table.insert(T1, T2)
print(#T1)
print(T1[1])
print(T1[2])
print(T1[3])
--移除
table.remove(T1)
print(T1[1].name)
print(T1[2].name)
print(T1[3])
table.remove(T1, 1)
print(T1[1].name)
print(#T1)

--排序
array = { 1, 5, 48, 4, 96, 46, 189, 549, 654 }
table.sort(array)
for _, value in pairs(array) do
    print(value)
end
print("降序")
table.sort(array, function(a, b)
    if a < b then
        return true
    end
end)
for _, value in pairs(array) do
    print(value)
end
print("拼接")
TB = { "123", "456", "789", "1011" }
str = table.concat(TB, ';')
print(str)
print("插入排序")
Arr = { 1, 5, 9, 4, 96, 45, 6, 87, 156, 985, 452 }
for i = 1, #Arr do
    for j = 1, #Arr do

    end
end
