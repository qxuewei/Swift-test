//
//  HttpTool.h
//  OC-BlockDemo
//
//  Created by 邱学伟 on 16/10/20.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HttpTool : NSObject
-(void)requestDate:(void(^)())callBlock;

@end
