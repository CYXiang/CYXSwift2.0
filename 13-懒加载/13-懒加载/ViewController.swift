//
//  ViewController.swift
//  13-懒加载
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*
    懒加载格式:
    lazy var 变量名称: 数据类型 = 闭包()
    注意: 闭包后面的()必须写, 代表着执行闭包, 将闭包的返回值赋值给变量
    */
//    lazy var listData: [String]? = {
//        ()->[String]
//        in
//        print("我被加载了")
//        return ["lmj", "lnj", "zs", "ls"]
//    }()
    
    // 开发中推荐这种写法
    lazy var listData: [String]? = {
        print("我被加载了")
        return ["lmj", "lnj", "zs", "ls"]
    }()
    
    // 函数就是一个特殊的闭包
//    lazy var listData: [String]? = self.test()
    
    func test() ->[String]
    {
        print("我被加载了")
        return ["lmj1", "lnj1", "zs1", "ls1"]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print(listData)
        print(listData)
        print(listData)
        print(listData)
        print(listData)
    }


}

