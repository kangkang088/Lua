A = { [0] = 1, 2, [-1] = 3, 4, 5, [5] = 6 }

--ipairs
--ipairs遍历从1开始，小于等于0的值得不到
--ipairs只能找到连续索引并且大于等于1的，如果中间断续，后面的就无法得到
for index, value in ipairs(A) do
    print("键：" .. index .. "，值：" .. value)
end
print("************")
for key, value in pairs(A) do
    print("键：" .. key .. "，值：" .. value)
end
