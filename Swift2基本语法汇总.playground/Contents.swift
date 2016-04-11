//: Playground - noun: a place where people can play

import UIKit

 /// Swift开发初体验

var str = "Hello, playground"

/// 01-创建对象
// OC:     initWithXXXX:
// Swift  (XXX:)

// 调用方法
// OC:    [UIColor redColor];
// Swift: UIColor.redColor()

// UIButtonType.ContactAdd ==UIButtonTypeContactAdd
// 枚举：
// OC:    UIButtonTypeContactAdd
// Swift: UIButtonType.ContactAdd

// 1.创建绿色的View
let subView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
subView.backgroundColor = UIColor.greenColor()

// 2.创建按钮
let btn = UIButton(type: UIButtonType.ContactAdd)
btn.frame.origin = CGPoint(x: 50, y: 50)

// 3.设置绿色View的frame
subView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
subView.backgroundColor = UIColor.orangeColor()

// 4.添加按钮到绿色的View
subView.addSubview(btn)

//================================常量与变量===================================//

/*:
常量变量
- 常量: let
- 变量: var
完整格式
- 修饰符（let/var）常量/变量名称：数据类型
*/

let number: Int
var value: Double

number = 10
value = 20

let n1: Int = 10
// 常量一旦初始化就不能在修改里面的值
// n1 = 20（报错）
// number = 20（报错）

/*:
类型推导
- 如果在定义一个常量或者变量的同时，给这个常量或变量进行了初始化，那么数据类型可以不写
- 如果在定义的同时初始化，那么初始化的值是什么类型，那么变量或常量就是什么类型
技巧
- 在Swift开发中，我们最常见的一个操作就是按住 option + click 查看变量/方法的说明
- 在Swift开发中，能不写类型就不写类型，减少冗余代码
- 在Swift开发中，苹果推荐我们先定义常量，只有需要修改的时候才定义变量
*/
let n2 = 10.1


/*:
数据类型
- Swift是类型安全的语言，在任何情况下都不会进行自动类型转换（隐式类型转换）
- 也就意味着只有相同的类型值才能进行赋值
*/

let n3: Int = Int(10.1)
let n4: Double = 10

// 哪怕是CGFloat和Double之间也不行，也必须进行转换
let rect = CGRect(x: 0, y: 0, width: 100, height: 100)
//let n5: Double = rect.width  (报错)

let n6 = 10
let n7 = 10.1
//let sum = n6 + n7  (报错)

//================================元祖===================================//
/*:
元祖
- 可以将多个值保存在一起
- 格式：（数值1，数值2，数值3）
- 特点：元祖可以保存不同数据类型的值
- 用途：在C/OC中如果一个函数想返回多个值需要借助指针，而Swift中有了元祖之后就不需要通过指针了
- 元祖和数组一样，可以通过索引访问元祖中保存的值
- 除此之外，还可以给每一个值起一个名字，将来通过这个名字访问对应的值
- 除此之外，还可以在定义的同时就取出元祖中的值
*/

let numbers = (10, 11, 12)
// 通过索引访问
numbers.0
numbers.1
numbers.2

let person = (name:"cyx", age: 22, score: 999.9)
// 通过名称访问
person.name
person.age
person.score

//let value: (String, Int, Double) = ("cyx", 22, 999.9)

// 相当于同时定义了三个变量
let (name, age, score) = ("cyx", 22, 999.9)
name
age
score


//================================分支===================================//

// 注意：Swift中可以不写;号，但是有一定的前提条件，必须要一行只有一句代码，如果一行有多句代码，还是要写;号
// 注意：Swift变态的地方，有时候运算符的左右如果没写空格就会报错
let num = 10

/*:
if
- Swift中的if和OC中的if用法大致一致，知识在细节上有一些细微的不同
不同点
- 1.OC中非0即真，而Swift中没有这个概念，Swift中if的条件表达式必须是一个bool值
- Swift中提供了真正的bool类型，取值true/false
- 2.Swift中条件表达式的()可以省略
- 3.OC中如果if里面只有一条语句，那么{}可以省略，但是Swift中不允许省略，哪怕只有一条也不可以
- if else / if else if写法都和OC一样
*/

if num == 10
{
    print("等于10")
}

if num == 5
{
    print("5")
}else{
    print("10")
}

/*:
三目运算符
- Swift中的三目运算符的用法和OC一名模一样，除了条件表达式只能是bool类型以外
- 在Swift开发中三目运算符用的非常多
*/
let value1 = 10
let res = value == 20 ? 20 : 0

/*:
switch
- 用法大致和OC的一样
不同点：
- 条件表达式的()可以省略
- 在OC中如果省略case后面的break会穿透，而Swift不会
- 在OC中如果想在case中定义变量，必须加上{}，否则作用域混乱，而Swift不会
- 在OC中default可以省略，而Swift中大部分情况是不能省略的
*/
let number1 = 0;
switch number{
case 0:
    print("0")
    let a = 998
case 5:
    print("5")
case 10:
    print("10")
default:
    print("other")
}

//================================可选类型===================================//


/*:
可选类型(可以有值, 也可以没有值)
* 在OC中我们可以给一个对象类型变量赋值为nil或者一个对象, 而在Swift中如果想给一个变量赋值为nil那么必须明确指定为可选类型才可以, 也就是说普通变量是不能赋值为nil的
格式:  数据类型?
*  以后但凡看到init后面跟上一个?, 就代表初始化方法返回的值是可选的
注意:
* 可选类型是不能直接使用的, 如果向使用一个可选类型的值, 必须对可选类型进行解包 !
* 解包的含义: 告诉系统可选类型的变量, 一定有值, 如果可选类型的值没有值, 我们又进行了强制解包, 那么就会报错
建议
* 初学者学习Swift最最最蛋疼的问题就是? !这种语法, 刚开始可以借助Xocde编译器的提醒来完成? !, 以后写多了就知道什么时候写? , 什么时候写!
*/

let str1 = "http://www.520it.com/"
let url = NSURL(string: str1)
print(url!)

let num1: Int? = 10
let num2: Int  = 20
// 注意: Swift不推荐我们随便使用强制解包
let sum = num1! + num2
if let temp = num1
{
    let sum = temp + num2
}



/*:
可选绑定
* 专门用于解决强制解包的弊端
* 注意: 开发中如果想使用一个可选类型的值, 也不一定一定用可选绑定, 因为如果可选类型的值较多, 而又都属于同一个逻辑, 那么一不小心就会形成if嵌套
*/
let url2 = NSURL(string: str)
print(url2)
// 取出url2的值赋值给temp, 如果取到了值那么就可以进入if后面的大括号, 如果没有取到值(nil), 就不会进入if后面的大括号
if let abc = url2
{
    print(abc)
}


let v1: Int? = 10
let v2: Int? = 20
let v3: Int? = 30

if let n1 = v1
{
    if let n2 = v2
    {
        if let n3 = v3
        {
            let sum = n1 + n2 + n3
        }
    }
}

/*:
guard
* 作用: 类似可选绑定
* 只有条件为假(flase), 才会执行else后面大括号中的代码
格式
guard 条件表达式 else
{
// 条件为假就会执行
}
*/


func test()
{
    guard let m1 = v1 else
    {
        print("没有值")
        return
    }
    guard let m2 = v2 else
    {
        print("没有值")
        return
    }
    guard let m3 = v3 else
    {
        print("没有值")
        return
    }
    
    let sum = m1 + m2 + m3
}
test()


//================================循环===================================//

/*:
for循环
* 基本用法和OC一致
* 条件表达式必须是bool类型的值
* 条件表达式的()可以省略
* 在OC中如果{}中只有一条语句, 那么{}可以省略, 而Swift不可以
*/
for var i = 0; i < 10; i++
{
    print(i)
}

/*:
区间
半闭区间: 0..<10  包含头不包含尾
闭区间:   0...10  包含头包含尾
*/
for i in 0...10
{
    print(i)
}

/*:
while循环
* 基本用法和OC一致
* 条件表达式必须是bool类型的值
* 条件表达式的()可以省略
* 在OC中如果{}中只有一条语句, 那么{}可以省略, 而Swift不可以
*/

var num5 = 0
while num5 < 10
{
    print(num5)
    num5++
}

/*:
repeat while循环
* 基本用法和OC一致
* 条件表达式必须是bool类型的值
* 条件表达式的()可以省略
* 在OC中如果{}中只有一条语句, 那么{}可以省略, 而Swift不可以
*/
var value2 = 0
repeat{
    print(value2)
    value2++
}while value2 < 10


//================================数组===================================//


/*:
数组
* 格式 var arr:[Int] = [数值1, 数值2, 数值3]
* 不可变数组  let  == NSArray
* 可变数组    var
*/
let arr = [10, 11, 12] // 开发中用这种
let arr2: [Int] = [10, 11, 12]
let arr3: Array<Int> = [10, 11, 12]

// 注意: 如果向先定义在初始化, 那么就必须在定义的时候指定数据类型
var arr4:[Int]
arr4 = [10, 11, 12]

// 如何创建空数组
var arr5 = [Int]()

// 不能给不可变的数组追加内容
//arr.append(20)

// 查找
arr4[0]

// 修改
arr4[0] = 55
arr4

// 追加
arr4.append(998)

// 删除
arr4.removeAtIndex(0)
arr4
arr4.removeAll()
arr4

// 数组开辟存储空间规则: 2的倍数
arr4.capacity
arr4.append(12)
arr4.capacity
arr4.append(11)
arr4.capacity
arr4.append(13)
arr4.capacity
arr4.append(18)
arr4.append(998)
arr4.capacity
arr4.append(998)
arr4.append(998)
arr4.append(998)
arr4.append(998)
arr4.capacity

// 遍历
for number in arr4
{
    print(number)
}




//================================字典===================================//



/*:
字典
* 和OC的区别
* 1. {} 替换为 []
* 2. 去掉所有@
* 可变字典   var
* 不可变字典 let
*/

var dict = ["name": "cyx", "age": 22]
let dict2: [String : NSObject] = ["name": "cyx", "age": 22]
// AnyObject == NSObject
let dict3: Dictionary<String, AnyObject> = ["name": "cyx", "age": 22]

// 注意: 在企业开发中, 使用频率最高的字典类型就是[String: AnyObject]
let dict4 = [String: AnyObject]()

// 取值
dict["name"]

// 更新
// 如果给一个存在的key赋值, 那么就是更新
dict["name"] = "zs"
dict

// 增加
// 如果给一个不存在的key赋值, 那么就是增加
dict["score"] = 99.9
dict

// 删除
dict.removeValueForKey("name")
dict

// 遍历
for key in dict.keys
{
    print(dict[key])
}

// 会取出字典中的key赋值给k, 取出字典中的value赋值给v
// 注意: k和v随便写, 但是需要注意key一定是赋值给前面一个遍历, value一定是赋值给后面一个遍历
for (key, value) in dict
{
    print(key)
    print(value)
}



//================================字符串===================================//


/*:
字符串
* OC中的字符串是一个对象, Swift中的字符串是一个结构体
* OC中的字符串以\0结尾, Swift中的字符串不是以\0结尾
* Swift中的字符串比OC中的字符的性能要好
* Swift中的字符串支持遍历
*/

let string = "abc\0def"
print(string)

// 遍历字符串
for c in string.characters
{
    print(c)
}

// 拼接字符串

var string2 = "cyx"

string2 += string
string2

// 格式化

let name2 = "cyx"
let age2 = 22
// 目标: name = cyx, age = 22
let res1 = "name = \(name2), age = \(age2)"

// 2015-01-03 14:05:06
let res2 = String(format: "%d-%02d-%02d %02d:%02d:%02d", arguments: [2015, 1, 3, 14, 5, 6])

// 字符串截取
let str3 = "cyx52000"
// 提示: 如果要对Swift中的字符串进行截取等操作, 最好使用NSString中的方法
//  好消息: Swift中的大部分数据类型, 都支持直接转换为OC中的数据类型 . 例如String --> NSString
let res4 = (str3 as NSString).substringWithRange(NSMakeRange(0, 3))

let str4: NSString = str3



//================================函数===================================//


/*:
函数
* 格式
func 函数名称(形参名称1: 形参类型, ...) -> 返回值类型
{
// 逻辑代码
}
* 没有参数没有返回值
* 没有参数有返回值
* 有参数没有返回值
* 有参数有返回值
*/

// 没有参数没有返回值
// 如果函数的返回值是Void, 那么可以简写为()
// 如果函数的返回值是(), 那么可以直接不写
func say() ->Void
{
    print("say hello")
}
say()

func say1() ->()
{
    print("say hello")
}
say1()

// 开发中请写下面这种
func say2()
{
    print("say hello")
}
say2()


// 没有参数有返回值
func getNumber() -> Int
{
    return 998
}
print(getNumber())

func getMinAndMax() ->(Int, Int)
{
    return (1, 998)
}
let (min, max) = getMinAndMax()
print(min)
print(max)


// 有参数没有返回值
// 注意: Swift2.0之前, 是不会将第二个参数开始后面所有的参数名称作为标签名称
//      从Swift2.0开始, Swift才将第二个参数开始后面所有的参数名称作为标签名称
// 在Swift2.0之前, 如果想实现这个功能, 那么必须手动添加外部参数
func sum(num1: Int, num2: Int)
{
    print(num1 + num2)
}
sum(10, num2: 20)


/*:
外部参数和内部参数
* 内部参数: 默认情况下, 所有的形参都是内部参数
* 外部参数: Swift2.0之前, 可以通过在形参前面加上名称的方式来制定外部参数, Swift2.0之后, 默认情况下从第二个形参开始, 形参既是内部参数又是外部参数

如何指定外部参数:
*  在形参前面以空格隔开, 加上一个名称即可
*  例如: value2 num2: Int
外部   内部  数据

如何忽略外部参数:
* 在形参前面以空格隔开, 加上_
* _代表忽略
* 例如:  _   num2: Int
忽略 内部  数据
*/

func sum1(num1: Int,_ num2: Int)
{
    print(num1 + num2)
}
sum1(10, 20)

/*:
常量形参和变量形参
* 默认情况下所有的形参都是常量形参, 也就是说不能在函数中修改形参的值
* 如果想在函数中修改形参的值, 那么必须把形参变为变量形参
*    只需要在变量名称前面加上 var即可
*    注意: 在函数中修改形参的值, 是不会影响到外部实参的值
*/

func swap(var num1: Int, var num2: Int)
{
    let temp = num1
    num1 = num2
    num2 = temp
}
let a = 10
let b = 20
print("a = \(a), b = \(b)")
swap(a, num2: b)
print("a = \(a), b = \(b)")


/*:
输入输出参数
* 如果想在函数中修改形参的值, 并且同时修改实参的值, 那么就必须将形参变为输入输出形参
*   只需要在形参名称前面加上inout即可
*/

func swap2(inout num1: Int, inout num2: Int)
{
    let temp = num1
    num1 = num2
    num2 = temp
}
var n = 10
var m = 20
print("n = \(n), m = \(m)")
swap2(&n, num2: &m)
print("n = \(n), m = \(m)")


/*:
可变参数
* 当一个函数不确定接收多少个参数时, 就可以使用可变参数
* 举例: 计算两个数的和 --> 需求变更 --> 计算三个数的和 --> 需求又变更 --> 计算10个数的和
注意点:
* 可变参数必须指定数据类型
* 在其它语言中有可能可变参数只能放到形参列表的最后面, 而Swift中可以放到任意位置
*/

// 既然任意个整数的和
func sum3(numbers: Int...)
{
    //    print(numbers)
    var sum = 0
    for number in numbers
    {
        sum += number
    }
    print(sum)
}
sum3(10, 20)

func sum4(numbers: Int..., value: Int)
{
    //    print(numbers)
    var sum = value
    for number in numbers
    {
        sum += number
    }
    print(sum)
}
sum4(10, 20, value: 999)

/*:
默认值
* 可以给形参指定默认值, 如果一个形参指定了默认值, 那么调用的时候就可以不传递该参数的值, 如果没有传递那么就使用默认值
注意点
* 在其他语言中可能默认值只能写在形参列表的最后面, 但是Swift中可以写在任意位置
*/

func joinString(str1: String = "lnj", str2: String = "❤️", str3: String = "520")
{
    print(str1 + str2 + str3)
}
//joinString("xmg", str2: "❤️", str3: "520")
//joinString("xmg", str2: "心", str3: "520")
//joinString("xmg", str3: "520")
//joinString("lnj")
joinString()

// 有参数有返回值
func sum5(num1: Int, num2: Int) -> Int
{
    return num1 + num2
}
print(sum5(20, num2: 20))






