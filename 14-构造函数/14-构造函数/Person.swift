//
//  Person.swift
//  14-构造函数
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

class Person: NSObject {
    // 一个对象在初始化时必须给所有的成员变量赋值
    var name: String?
    // 注意点: 如果自定义一个对象, 而对象的属性如果又是基本数据类型, 那么不建议设置为可选类型
    // 而是应该赋值为0, 或者-1
    // 总结规律: 对象类型设置为可选类型, 基本数据类型赋值初始值
    var age: Int = -1
    
    // 如果既没有重写也没有自定义, 那么系统会给我们提供一个默认的构造方法
    // 如果自定了构造方法, 并且没有重写默认构造方法, 那么系统默认的构造方法就会失效

    // 重写父类构造方法
    // 以后但凡看到override, 就代表是重写父类的
    override init() {
        name = "lnj"
        age = 30
        // 系统悄悄咪咪的帮我们调用了一次super.init()
//        super.init()
    }

    // 自定义构造
    init(name: String, age: Int)
    {
        self.name = name
        self.age = age
    }
    
    
    init(dict: [String: AnyObject])
    {
        // 注意: 如果想在Swift的构造方法中使用KVC, 必须先手动调用super.init
        super.init()
        setValuesForKeysWithDictionary(dict)
    }
    
    // 如果利用KVC赋值, 但是字典和模型的属性不能一一对应, 就会调用下面这个方法
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {

    }
    // 只要重写这个属性, 就相当于OC中重写description方法
    override var description: String {
        // 优化
        let property = ["name", "age"]
        let dict =  dictionaryWithValuesForKeys(property)
        return "\(dict)"
//        return "name = \(self.name), age = \(self.age)"
    }

}
