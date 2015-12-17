//
//  ViewController.m
//  02-按钮的基本基本使用
//
//  Created by 李 德山 on 14-9-21.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIButton *headBtn;

- (IBAction) top;
- (IBAction) buttom;
- (IBAction) left;
- (IBAction) right;

- (IBAction) big;
- (IBAction) small;




@end


@implementation ViewController



- (IBAction)top {
//  由于对象中的结构属性的成员不能直接进行修改
//  所以我们首先拿到原来的frame对它进行修改
    CGRect frame =  self.headBtn.frame;
//  向上移动需要缩小它的y值
    frame.origin.y -= 10;
//  然后把这个值赋值给控件的frame属性
    self.headBtn.frame = frame;
}


- (IBAction) buttom{
    
    CGRect frame = self.headBtn.frame;
    frame.origin.y += 10;
    self.headBtn.frame = frame;
    
}
- (IBAction) left{
    
    
    CGRect frame = self.headBtn.frame;
    frame.origin.x -= 10;
    self.headBtn.frame = frame;
    
}
- (IBAction) right{
    
    CGRect frame = self.headBtn.frame;
    frame.origin.x += 10;
    self.headBtn.frame = frame;
    
}

- (IBAction) big{
    
    CGRect frame = self.headBtn.frame;
    
    frame.size.width += 10;
    frame.size.height += 10;
    
    self.headBtn.frame = frame;
}
- (IBAction) small{
    
    CGRect frame = self.headBtn.frame;
    
    frame.size.width -= 10;
    frame.size.height -= 10;
    
    self.headBtn.frame = frame;
    
}

@end
