//
//  ViewController.swift
//  SQLite数据库操作-Swift
//
//  Created by 邱学伟 on 16/10/24.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        for i in 1...7 {
//            let name = "name_\(i)"
//            let age = arc4random_uniform(18).hashValue + i
//            let icon = "http://qiuxuewei.com/icon\(i).png"
//            let user : User = User(name: name, age: age, icon: icon)
//            if user.insertSelfToDB() {
//                print("第 \(i) 个用户插入成功!")
//            }
//        }
        
        //修改name_6头像为newIocn
//        changeIcon(newIcon: "http://newIcon.png")
        
        //取出用户表所有数据
        let userArr = User.allUserFromDB()
        print(userArr)
    }
    
    func changeIcon(newIcon : String) {
        //包装修改头像的SQL语句
        let changeIconSQL = "UPDATE 't_User' SET icon='\(newIcon)' WHERE name='name_6'"
        if SQLiteManager.shareInstance().execSQL(SQL: changeIconSQL) {
            print("name_6 头像修改成功!")
        }
    }


}

