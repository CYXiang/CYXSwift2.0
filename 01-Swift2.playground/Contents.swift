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



