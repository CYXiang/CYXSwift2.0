//
//  ViewController.m
//  11-Block
//
//  Created by xiaomage on 15/11/5.
//  Copyright © 2015年 xiaomage. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    
    
    
    [self loadData:^{
        NSLog(@"%@", [NSThread currentThread]);
        NSLog(@"回到主线程更新UI");
    }];
    /*
     Block格式:
     类型:
     返回值类型(^Block名称)(形参列表)
     值:
     ^(形参列表){
        // 逻辑代码
     }
     */
}

- (void)loadData:(void(^)())myBlock
{
    // 1.异步获取数据
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"%@", [NSThread currentThread]);
        NSLog(@"异步获取数据");
        // 2.回到主线程更新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            
            myBlock();
        });
        
    });
}
@end
