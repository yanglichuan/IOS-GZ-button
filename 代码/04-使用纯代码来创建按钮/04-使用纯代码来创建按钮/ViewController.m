//
//  ViewController.m
//  04-使用纯代码来创建按钮
//
//  Created by Apple on 14/12/9.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//当控制器中那个全屏的view加载完成会调用这个的方法
- (void)viewDidLoad {
//  必须要调用这个方法
    [super viewDidLoad];
//  创建按钮
    UIButton *headBtn = [[UIButton alloc] init];
    
    
//  设置图片
//  创建一张图片 注意png类型图片不需要后缀
    UIImage *image = [UIImage imageNamed:@"btn_01"];
//  设置普通状态的图片
    [headBtn setBackgroundImage:image forState:UIControlStateNormal];
//  创建一张图片 注意png类型图片不需要后缀
    UIImage *image2 = [UIImage imageNamed:@"btn_02"];
//  设置高亮状态的图片
    [headBtn setBackgroundImage:image2 forState:UIControlStateHighlighted];
    
//   设置文字
    [headBtn setTitle:@"你点我啊！" forState:UIControlStateNormal];
//   设置颜色
    [headBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    //   设置文字
    [headBtn setTitle:@"你摸我干啥！" forState:UIControlStateHighlighted];
    //   设置颜色
    [headBtn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    
//  修改按钮的frame属性（位置和尺寸）
    headBtn.frame = CGRectMake(80, 80, 200, 200);
    
//  添加到要view里面
    [self.view addSubview:headBtn];

//  给按钮添加事件监听
    [headBtn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
//  创建一个加号按钮
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    
    btn.center = CGPointMake(300, 300);
    
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void) btnClick:(UIButton *) btn
{
    NSLog(@"btnClick%@",btn);
}

@end
