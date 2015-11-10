//: Playground - noun: a place where people can play

import UIKit



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