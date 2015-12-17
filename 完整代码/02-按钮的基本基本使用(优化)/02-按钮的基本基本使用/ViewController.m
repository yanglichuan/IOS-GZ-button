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



@end


@implementation ViewController

- (IBAction) move:(UIButton *) sender;
{
    
    CGPoint center = self.headBtn.center;
    
    switch (sender.tag) {
        case 0:
           center.y -= 10;
            break;
        case 1:
            center.y += 10;
            break;
        case 2:
            center.x -= 10;
            break;
        case 3:
           center.x += 10;
            break;
        default:
            break;
    }
    
    self.headBtn.center = center;
    
}


- (IBAction) chageSize:(UIButton *) sender
{
//  修改bounds.size属性，图片是按照中心店进行所缩放的
    CGRect bounds = self.headBtn.bounds;
    switch (sender.tag) {
        case 10:
            bounds.size.width += 10;
            bounds.size.height += 10;
            break;
        case 11:
            bounds.size.width -= 10;
            bounds.size.height -= 10;
            break;
        default:
            break;
    }
    
    self.headBtn.bounds = bounds;
    
}



@end
