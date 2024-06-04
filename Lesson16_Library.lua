print(os.time())
print(os.time({ year = 2014, month = 8, day =14}))
local nowtime=os.date("*t")
print(nowtime)
for key, value in pairs(nowtime) do
    print(key,value)
end
print(nowtime.year)
print(package.path)