//
//  User.h
//  SQLite数据库操作-0C
//
//  Created by 邱学伟 on 16/10/24.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject
@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) NSInteger age;
@property (nonatomic,copy) NSString *icon;
-(instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andIcon:(NSString *)icon;
-(instancetype)initWithDict:(NSDictionary *)dict;
//将本身插入数据库
-(BOOL)insertSelfToDB;
//数据库中所有对象
+(NSArray *)allUserFromDB;
@end
