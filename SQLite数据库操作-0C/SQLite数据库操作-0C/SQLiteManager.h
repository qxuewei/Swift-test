//
//  SQLiteManager.h
//  SQLite数据库操作-0C
//
//  Created by 邱学伟 on 16/10/24.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SQLiteManager : NSObject
//类方法生成单例对象
+(instancetype)shareInstance;
//打开数据库
-(BOOL)openDB;
//执行SQL语句
-(BOOL)execSQL:(NSString *)SQL;
//获取表中数据
-(NSArray *)querySQL:(NSString *)SQL;
@end
