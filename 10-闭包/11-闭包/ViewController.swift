//
//  ViewController.swift
//  11-闭包
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        闭包和OC中的Block很像
        OC中的Block类似于匿名函数
        Swift中的闭包就是一个特殊的函数
        
        Block一般用于回调, 异步准备数据, 然后通过Block回调更新UI
        */
        
        /*
        Block格式:
        类型:
        返回值类型(^Block名称)(形参列表)
        值:
        ^(形参列表){
          // 逻辑代码
        }
        */
        
        /*
        闭包格式:
        类型:
        (形参列表)->返回值
        技巧:
        初学者定义闭包类型, 不管三七二十一先写上 ()->()
        值:
        in的作用就是用于分隔逻辑代码和描述
        { 
        (形参列表) -> 返回值类型
        in
            // 逻辑代码
        }
        */

        /*
        闭包的简写
        * 如果没有返回值也没有参数, 那么in和in之前的代码可以删除
        * 如果闭包所形参列表的最后一个参数, 那么可以把闭包写到()后面
        * 如果函数只有一个形参, 并且这个形参是一个闭包, 那么()可以不写
        */
//        loadData ({ () -> () in
//            print(NSThread.currentThread())
//            print("回到主线程更新UI")
//        })
        
//        loadData ({
//            print(NSThread.currentThread())
//            print("回到主线程更新UI")
//        })
        
        // 以下两种写法, 我们称之为尾随闭包
//        loadData (){
//            print(NSThread.currentThread())
//            print("回到主线程更新UI")
//        }
        
        // 开发中建议写下面这一种写法
        loadData {
            print(NSThread.currentThread())
            print("回到主线程更新UI")
        }
    }


    func loadData(myBlock: ()->())
    {
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            print(NSThread.currentThread())
            print("异步准备数据")
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                myBlock()
            })
        }
    }

}

