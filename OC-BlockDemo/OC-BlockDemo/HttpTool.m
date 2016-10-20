//
//  HttpTool.m
//  OC-BlockDemo
//
//  Created by 邱学伟 on 16/10/20.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "HttpTool.h"

@implementation HttpTool
-(void)requestDate:(void (^)())callBlock{
    //异步线程请求数据
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       //加载数据
        NSLog(@"加载数据....%@",[NSThread currentThread]);
        //主线程更新UI
        dispatch_async(dispatch_get_main_queue(), ^{
            callBlock();
        });
    });
}
@end
