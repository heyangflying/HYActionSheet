//
//  ViewController.m
//  HYActionSheet
//
//  Created by heyang on 15/9/6.
//  Copyright (c) 2015年 com.scxingdun. All rights reserved.
//
#import "HYActionSheet.h"
#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (IBAction)action:(UIButton *)sender {
    
    
    
    /** 创建*/
    HYActionSheet * actionSheet = [[HYActionSheet alloc] init];
    
    NSArray *items = @[@"相机", @"手机相册", @"QQ空间相册", @"取消"];
    
    actionSheet.titles = items;
    
    actionSheet.destructiveButtonIndex = 3;
    
    actionSheet.cancelButtonIndex = 3;

    /** HYActionSheet 抛弃传统协议传值方式同步得到选中的值*/
  
    
    NSLog(@"当前选中按钮: -> %@", items[[actionSheet showInView:self.view]]);

    
}

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
