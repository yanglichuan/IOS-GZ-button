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

//向上
- (IBAction) up;

//向下
- (IBAction) down;

//向左
- (IBAction) left;

//向右
- (IBAction) right;

//变大
- (IBAction) big;
//变小
- (IBAction) small;
@end

@implementation ViewController

//向上
- (IBAction) up
{
//  OC中不能直接修改一个对象的结构体属性的成员
//    self.headBtn.frame.origin.y -= 10;
//   直接给结构体属性赋值
//   取出原来的frame
    CGRect frame = self.headBtn.frame;
//  调整y值
    frame.origin.y -= 10;
//  修改frame
    self.headBtn.frame = frame;
    
//    NSLog(@"%@",self.headBtn);
}

//向下
- (IBAction) down
{
    CGRect frame = self.headBtn.frame;
    //  调整y值
    frame.origin.y += 10;
    //  修改frame
    self.headBtn.frame = frame;
}

//向左
- (IBAction) left
{
    CGRect frame = self.headBtn.frame;
    //  调整y值
    frame.origin.x -= 10;
    //  修改frame
    self.headBtn.frame = frame;
}

//向右
- (IBAction) right
{
    CGRect frame = self.headBtn.frame;
    //  调整y值
    frame.origin.x += 10;
    //  修改frame
    self.headBtn.frame = frame;
}

//变大
- (IBAction) big
{
      CGRect frame = self.headBtn.frame;
      frame.size.width += 10;
      frame.size.height += 10;
    
    NSLog(@"%@",NSStringFromCGRect(frame));
    self.headBtn.frame = frame;
    NSLog(@"%@",self.headBtn);
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
