//
//  User.m
//  SQLite数据库操作-0C
//
//  Created by 邱学伟 on 16/10/24.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "User.h"
#import "SQLiteManager.h"
@implementation User
-(instancetype)initWithName:(NSString *)name andAge:(NSInteger)age andIcon:(NSString *)icon{
    if (self = [super init]) {
        self.name = name;
        self.age = age;
        self.icon = icon;
    }
    return self;
}
-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
-(BOOL)insertSelfToDB{
    //插入对象的SQL语句
    NSString *insertSQL = [NSString stringWithFormat:@"INSERT INTO 't_User' (name,age,icon) VALUES ('%@',%ld,'%@');",self.name,self.age,self.icon];
    return [[SQLiteManager shareInstance] execSQL:insertSQL];
}
+(NSArray *)allUserFromDB{
    //查询表中所有数据的SQL语句
    NSString *SQL = @"SELECT name,age,icon FROM 't_User'";
    //取出数据库用户表中所有数据
    NSArray *allUserDictArr = [[SQLiteManager shareInstance] querySQL:SQL];
    NSLog(@"%@",allUserDictArr);
    //将字典数组转化为模型数组
    NSMutableArray *modelArrM = [[NSMutableArray alloc] init];
    for (NSDictionary *dict in allUserDictArr) {
        [modelArrM addObject:[[User alloc] initWithDict:dict]];
    }
    return modelArrM;
}
@end
