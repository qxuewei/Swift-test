//
//  ViewController.m
//  SQLite数据库操作-0C
//
//  Created by 邱学伟 on 16/10/24.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "SQLiteManager.h"
#import "User.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /**
    for (NSInteger i = 1; i < 8; i++) {
        NSString *name = [NSString stringWithFormat:@"name_%ld",i];
        NSInteger age = arc4random_uniform(18) + i + 5;
        NSString *icon = [NSString stringWithFormat:@"http://qiuxuewei.com/icon_%ld.png",i];
        NSLog(@"arc4random_uniform(2) : %u",arc4random_uniform(2));
//        [[SQLiteManager shareInstance] execSQL:@"DELETE FROM 't_User'"];
        if (arc4random_uniform(2) == 1) {
            User *USER = [[User alloc] initWithName:name andAge:age andIcon:icon];
            if ([USER insertSelfToDB]) {
                NSLog(@"对象 %ld 插入成功!",i);
            }else{
                NSLog(@"对象 %ld 插入失败!",i);
            }
        }else{
            NSDictionary *dict = @{
                                   @"name":name,
                                   @"age":[NSNumber numberWithInteger:age],
                                   @"icon":icon
                                   };
            User *USER = [[User alloc] initWithDict:dict];
            if ([USER insertSelfToDB]) {
                NSLog(@"对象 %ld 插入成功!",i);
            }else{
                NSLog(@"对象 %ld 插入失败!",i);
            }
        }
    }
    */
    
//    [User allUserFromDB];
    
    [self updateIcon];
    
    
}
-(void)updateIcon{
    //更新对应的SQL语句
    NSString *SQL = [NSString stringWithFormat:@"UPDATE 't_User' SET icon='%@' WHERE name = '%@'",@"http://qiuxuewei.com/newIcon.png",@"name_6"];
    if ([[SQLiteManager shareInstance] execSQL:SQL]) {
        NSLog(@"对应数据修改成功");
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
