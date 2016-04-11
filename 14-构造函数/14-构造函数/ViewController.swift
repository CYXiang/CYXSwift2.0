//
//  ViewController.swift
//  14-构造函数
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 注意: Swift中如果文件是在同一个项目中, 那么可以不用导入头文件
        // 为什么不用导入, Swift中提供了一个叫做命名空间的概念, 只要在同一个命名空间中都可以直接使用
        // 默认情况下, 项目名称就是命名空间
        
        // 开发技巧:
        // 正是因为有了命名空间, 所以以后在做Swift开发时所有三方框架都使用cocoapods集成,
        // 如果使用cocoapods集成框架, 那么cocoapods会自动生成一个新的项目
        
//        let p = Person()
//        let p = Person(name: "zs", age: 55)
//        print(p.name)
//        print(p.age)
//        print(p)
        
        let p = Person(dict: ["name": "lnj", "age": 88, "score": 59.5])
        print(p)
    }


}

