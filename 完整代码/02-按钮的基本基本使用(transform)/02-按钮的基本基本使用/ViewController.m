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

- (IBAction) move:(UIButton *) sender;


- (IBAction) chageSize:(UIButton *) sender;

- (IBAction)rotate:(UIButton *)sender;

@end


@implementation ViewController

- (IBAction) move:(UIButton *) sender;
{
//    CGAffineTransform transform = self.headBtn.transform;
//    CGAffineTransform transform;
    CGPoint moveTo = {0,0};
    switch (sender.tag) {
        case 0:
            moveTo.y -= 10;
            break;
        case 1:
            moveTo.y += 10;
            break;
        case 2:
            moveTo.x -= 10;
            break;
        case 3:
            moveTo.x += 10;
            break;
        default:
            break;
    }
    
   self.headBtn.transform  =  CGAffineTransformTranslate(self.headBtn.transform, moveTo.x, moveTo.y);
//    self.headBtn.transform = CGAffineTransformMakeTranslation(moveTo.x, moveTo.y);
    
}


- (IBAction) chageSize:(UIButton *) sender
{
//  修改bounds.size属性，图片是按照中心店进行所缩放的
//    CGRect bounds = self.headBtn.bounds;
    CGPoint  scale = {0,0};
    switch (sender.tag) {
        case 10:
            scale.x = 1.2;
            scale.y = 1.2;
            break;
        case 11:
            scale.x = 0.8;
            scale.y = 0.8;
            break;
        default:
            break;
    }
    
    self.headBtn.transform = CGAffineTransformScale(self.headBtn.transform,scale.x  ,scale.y);
    
}

- (IBAction)rotate:(UIButton *)sender
{
    CGFloat angle = M_PI_4;
    if (sender.tag == 20) {
        angle = -M_PI_4;
    }
    
    self.headBtn.transform =  CGAffineTransformRotate(self.headBtn.transform,angle);
}

@end
