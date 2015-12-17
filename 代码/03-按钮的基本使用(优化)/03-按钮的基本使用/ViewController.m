//
//  ViewController.m
//  03-按钮的基本使用
//
//  Created by Apple on 14/12/9.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic,weak) IBOutlet UIButton *headBtn;


//变大
- (IBAction) big;
//变小
- (IBAction) small;


//移动
- (IBAction) move:(UIButton *) btn;


@end

@implementation ViewController

//移动
- (IBAction) move:(UIButton *) btn
{

//  取出按钮的标示
    int tag = btn.tag;
//  取出原来的frame
    CGRect frame = self.headBtn.frame;
    //  调整y值
    switch (tag) {
        case 10:
             frame.origin.y -= 50;
            break;
        case 20:
            frame.origin.y += 50;
            break;
        case 30:
            frame.origin.x -= 50;
            break;
        case 40:
            frame.origin.x += 50;
            break;
        default:
            break;
    }
    
    // 头尾式动画
    //   开始动画
    [UIView beginAnimations:nil context:nil];
    //   设置动画持续1s
    [UIView setAnimationDuration:1.0];
    //  修改frame
    self.headBtn.frame = frame;
//  提交动画
    [UIView commitAnimations];
    
//    NSLog(@"%@",btn);
}
//变大
- (IBAction) big
{
      CGRect frame = self.headBtn.frame;
      frame.size.width += 100;
      frame.size.height += 100;
//  block动画
//  动画持续2s
    [UIView animateWithDuration:2.0 animations:^{
//        需要执行动画的代码
            self.headBtn.frame = frame;
    }];
 
    
}
//变小
- (IBAction) small
{
    CGRect frame = self.headBtn.frame;
    frame.size.width -= 10;
    frame.size.height -= 10;
    self.headBtn.frame = frame;
}













@end
