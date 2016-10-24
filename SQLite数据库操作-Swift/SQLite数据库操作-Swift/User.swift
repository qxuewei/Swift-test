//
//  User.swift
//  SQLite数据库操作-Swift
//
//  Created by 邱学伟 on 16/10/24.
//  Copyright © 2016年 邱学伟. All rights reserved.
//  自定义模型

import UIKit

class User: NSObject {
    //MARK: - 成员属性
    var name : String? = nil
    var age : Int = 0
    var icon : String? = nil
    
    //MARK: - 对象方法
    init(name : String,age : Int,icon : String) {
        self.name = name
        self.age = age
        self.icon = icon
    }
    init(dict : [String : AnyObject]) {
        super.init()
        self.setValuesForKeys(dict)
    }
    
    //将自身插入数据库接口
    func insertSelfToDB() -> Bool {
        //插入SQL语句
        let insertSQL = "INSERT INTO 't_User' (name,age,icon) VALUES ('\(name!)',\(age),'\(icon!)');"
        if SQLiteManager.shareInstance().execSQL(SQL: insertSQL) {
            print("插入数据成功")
            return true
        }else{
            return false
        }
    }
    
    
    //MARK: - 类方法
    //将本对象在数据库内所有数据全部输出
    class func allUserFromDB() -> [User] {
        
        return []
    }
    
    //MARK: - 私有方法
}
