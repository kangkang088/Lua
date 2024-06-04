print("全局变量和局部变量")
local a = 5
print("多脚本执行")
require("Test")
print(TestA)
print(require("Test"))
print("脚本卸载")
--package
print(package.loaded["Test"])
package.loaded["Test"] = nil
print(package.loaded["Test"])
print("大G表")
