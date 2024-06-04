a = { 1, 2, nil, 4, 5, 6, nil }
print(#a)
print(a[1])
for i = 1, #a do
    print(a[i])
end

aa = { { 1, 2, 3 }, { 4, 5, 6 } }
for i = 1, #aa do
    b = aa[i]
    for j = 1, #b do
        print(b[j])
    end
end
print("***************")
B = { 1, 3, 5, 7, 9, 11 }

for i = 1, #B do
    for j = 1, #B - i do
        if B[j] < B[j + 1] then
            temp = B[j]
            B[j] = B[j + 1]
            B[j + 1] = temp
        end
    end
end
for i = 1, #B do
    print(B[i])
end
