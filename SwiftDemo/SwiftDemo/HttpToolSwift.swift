//
//  HttpToolSwift.swift
//  SwiftDemo
//
//  Created by 邱学伟 on 16/10/20.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

import UIKit

class HttpToolSwift: NSObject {
    //定义回调的block
    var callBlock : (() -> ())?
    
    func requestData(callBlock : @escaping () -> ()) -> Void {
        //swift3 中GCD 进行了比较大的改动
        //不再支持原先OC中的写法
        //异步请求数据
        let queue : DispatchQueue = DispatchQueue(label: "com.qiuxuewei.SwiftDemo")
        queue.async {
            //异步请求数据
            print("异步请求数据...当前线程:\(Thread.current)")
            
            //回到主线程更新UI
            let mainQueue : DispatchQueue = DispatchQueue.main
            mainQueue.async {
                callBlock()
            }
        }
    }
}
