//
//  Person.swift
//  SwiftDemo
//
//  Created by 邱学伟 on 16/10/20.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

import UIKit

class Person: AnyObject {
    //运算符重载:
    func sum(num1 : Int,num2 : Int) -> Int {
        return num1 + num2
    }
    //参数类型不同
    func sum(num1 : Double,num2 : Double) -> Double {
        return num1 + num2
    }
    //参数个数不同
    func sum(num1 : Int,num2 : Int,num3 : Int) -> Int {
        return num1 + num2 + num3
    }
}
