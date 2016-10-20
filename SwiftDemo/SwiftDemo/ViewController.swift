//
//  ViewController.swift
//  SwiftDemo
//
//  Created by 邱学伟 on 16/10/20.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //类的函数重载
//        let person = Person()
//        let sumDoule : Double = person.sum(num1: 1.9, num2: 2.2)
//        print(sumDoule)
//        print(person.sum(num1: 1, num2: 2, num3: 3))
        
        //swift 中的block
        let httpTool : HttpToolSwift = HttpToolSwift()
        httpTool.requestData { 
            //返回服务器获取的数据,更新UI
            print("返回服务器获取的数据,更新UI...当前线程:\(Thread.current)")
            self.view.backgroundColor = UIColor.red
        }
        
    }

}

