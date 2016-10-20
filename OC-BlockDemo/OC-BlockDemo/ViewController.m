//
//  ViewController.m
//  OC-BlockDemo
//
//  Created by 邱学伟 on 16/10/20.
//  Copyright © 2016年 邱学伟. All rights reserved.
//

#import "ViewController.h"
#import "HttpTool.h"
@interface ViewController ()
@property (nonatomic, strong) HttpTool *tool;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tool = [[HttpTool alloc] init];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self.tool requestDate:^{
        
        NSLog(@"返回服务器数据更新UI___:%@",[NSThread currentThread]);
        
        self.view.backgroundColor = [UIColor redColor];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
