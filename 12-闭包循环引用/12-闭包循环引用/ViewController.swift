

import UIKit

class ViewController: UIViewController {

    // 报错的原因: Swift规定一个对象中的属性必须在对象初始化时全部初始化
    // 如果没有在初始化时给所有的属性赋值, 那么就会报错
    // 要想不报错, 那么可以让属性变成可选的
    
    // 注意: 错误写法()->()? , 这中写法代表闭包的返回值是可选的, 而不是闭包是可选的
    // 可选类型的值, 如果没有初始化, 那么默认值就是nil
    var finished: (()->())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.purpleColor()
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        /*
        OC中: __weak typeof(self) weakSelf = self;
        // 因为变量是weak的, 随时有可能被释放, 所以系统推导是可选类型
        Swift中: weak var weakSelf = self
        
        Swift中的weak对应OC中的__weak, 如果对象释放了, 那么会自动将变量赋值为nil
        Swift中的unowned对应OC中的__unsafe_unretained,  如果对象释放了, 不会将变量赋值为nil, 如果对象释放了再继续访问会出现野指针错误
        */
       
        // 开发中推荐这样写
        loadData { [unowned self] () -> () in
            print(NSThread.currentThread())
            print("回到主线程更新UI")
            self.view.backgroundColor = UIColor.redColor()
        }
    }
    
    func loadData(myBlock: ()->())
    {
        dispatch_async(dispatch_get_global_queue(0, 0)) { () -> Void in
            print(NSThread.currentThread())
            print("异步准备数据")
            
            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                self.finished = myBlock
                myBlock()
            })
        }
    }
    
    // OC : dealloc
    // Swift: deinit
    deinit
    {
        // 只要对象释放就会调用这个方法
        print("滚")
    }

}

