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
//  取出原来的中心点
    CGPoint center = self.headBtn.center;
    //  调整y值
    switch (tag) {
        case 10:
             center.y -= 50;
            break;
        case 20:
            center.y += 50;
            break;
        case 30:
            center.x -= 50;
            break;
        case 40:
            center.x += 50;
            break;
        default:
            break;
    }
    
    // 头尾式动画
    //   开始动画
    [UIView beginAnimations:nil context:nil];
    //   设置动画持续1s
    [UIView setAnimationDuration:1.0];
    //  修改中心点
    self.headBtn.center = center;
//  提交动画
    [UIView commitAnimations];
    
//    NSLog(@"%@",btn);
}
//变大
- (IBAction) big
{
//    bounds 相对于自己左上角的位置（0,0）和尺寸
//    bounds 用来修改大小的
      CGRect bounds = self.headBtn.bounds;
      bounds.size.width += 100;
      bounds.size.height += 100;
//  block动画
//  动画持续2s
       self.headBtn.bounds = bounds;
//    [UIView animateWithDuration:2.0 animations:^{
////        需要执行动画的代码
//            self.headBtn.bounds = bounds;
//    }];
 
    
}
//变小
- (IBAction) small
{
    CGRect bounds = self.headBtn.bounds;
    bounds.size.width -= 10;
    bounds.size.height -= 10;
    self.headBtn.bounds = bounds;
}













@end
