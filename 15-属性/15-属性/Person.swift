//
//  Person.swift
//  15-属性
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

class Person: NSObject {

    /*
    // 开发中几乎没有人这么写, 也不推荐这样写
    var _name: String?
    var name: String?
        {
        set{
            // newValue是系统提供的变量
            _name = newValue
        }
        get{
            return _name
        }
    }
    */
    
    /*
    // 开发中的写法
    var name: String?
        {
        willSet{
//            print(name)
            print(newValue)
        }
        // 只要重写该方法就可以监听到属性的赋值
        // 只要属性赋值完毕就会调用didSet
        // 所以说以前在OC中通过重写set方法完成的操作, 在Swift中都通过重写didSet完成
        didSet{
//            print(name)
            print(oldValue)
        }
    }
    */
    
    // 如果只重写了get方法, 那么这个属性就是只读属性, 也就是说不能赋值
    // Swift中的只读属性我们称之为: 计算型属性, 它不具备存储的能力
//    var name: String
//        {
//        get{
//            return "lnj"
//        }
//    }
    
    // 如果想定义一个只读属性(计算型属性), 那么可以简写
    var name: String
        {
            return "lnj"
        }
}
