//
//  ViewController.m
//  03使用代码创建按钮
//
//  Created by 李 德山 on 14-9-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//  创建按钮对象
    UIButton *btn  =  [[UIButton  alloc] init];
//  设置按钮的位置和大小
    btn.frame = CGRectMake(100, 100, 100, 100);
//  设置按钮的背景颜色
//    [btn setBackgroundColor:[UIColor redColor]];
//  设置普通状态下背景图片
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_01"] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:@"btn_02"] forState:UIControlStateHighlighted];
//  添加到view上
    [btn setTitle:@"摸我啊" forState:UIControlStateNormal];
    [btn setTitle:@"摸我干嘛" forState:UIControlStateHighlighted];
//    通过这个属性设置字体不起作用
//    btn.titleLabel.text = @"摸我啊";
//  设置字体颜色
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
//  设置字体大小
//    btn.titleLabel.font = [UIFont systemFontOfSize:30];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
//   也可以通过类方法来创建系统的提供的按钮，系统提供的按钮不需要设置它的大小
    
    UIButton *addBtn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    [self.view addSubview:addBtn];
    
    UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeInfoDark];
    infoBtn.center = CGPointMake(30,30);
    [self.view addSubview:infoBtn];
    
    
    
    
}

- (void) btnClick
{
    NSLog(@"btnClick");
}


@end
