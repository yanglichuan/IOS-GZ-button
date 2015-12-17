//
//  ViewController.m
//  01-图片浏览器(掌握)
//
//  Created by 李 德山 on 14-9-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *indexLabel;
@property (weak, nonatomic) IBOutlet UIImageView *mainImageView;
@property (weak, nonatomic) IBOutlet UILabel *descLabel;
@property (weak, nonatomic) IBOutlet UIButton *leftBtn;
@property (weak, nonatomic) IBOutlet UIButton *rightBtn;

- (IBAction)previous;

- (IBAction)next;


@property (nonatomic,assign) int index;

@end

@implementation ViewController

- (void)viewDidLoad {
    self.index = 1;
    self.indexLabel.text =  [NSString stringWithFormat:@"%d/%d",self.index,5];
    self.mainImageView.image = [UIImage imageNamed:@"biaoqingdi"];
    self.leftBtn.enabled = NO;
    self.descLabel.text = @"在他面前，其他神马表情都弱爆了！";
}

- (IBAction)next {
    self.index++;
    self.indexLabel.text =  [NSString stringWithFormat:@"%d/%d",self.index,5];

    switch (self.index) {
        case 2:
            self.mainImageView.image = [UIImage imageNamed:@"wangba"];
            self.descLabel.text  = @"哥们为什么选八号呢";
            self.leftBtn.enabled = YES;
            break;
        case 3:
            self.mainImageView.image = [UIImage imageNamed:@"bingli"];
            self.descLabel.text  = @"这也忒狠了";
            break;
        case 4:
            self.mainImageView.image = [UIImage imageNamed:@"chiniupa"];
            self.descLabel.text  = @"这小姑娘吃个牛排比杀牛还费劲啊";
            break;
        case 5:
            self.mainImageView.image = [UIImage imageNamed:@"danteng"];
            self.descLabel.text  = @"亲，你能改下你的网名么？哈哈";
            self.rightBtn.enabled = NO;
            break;
        default:
            break;
    }
    
  
}

- (IBAction)previous {
    
    self.index--;
    self.indexLabel.text =  [NSString stringWithFormat:@"%d/%d",self.index,5];
    
    switch (self.index) {
        case 1:
            self.indexLabel.text =  [NSString stringWithFormat:@"%d/%d",self.index,5];
            self.mainImageView.image = [UIImage imageNamed:@"biaoqingdi"];
            self.leftBtn.enabled = NO;
            self.descLabel.text = @"在他面前，其他神马表情都弱爆了！";
            break;
        case 2:
            self.mainImageView.image = [UIImage imageNamed:@"wangba"];
            self.descLabel.text  = @"哥们为什么选八号呢";
            break;
        case 3:
            self.mainImageView.image = [UIImage imageNamed:@"bingli"];
            self.descLabel.text  = @"这也忒狠了";
            break;
        case 4:
            self.mainImageView.image = [UIImage imageNamed:@"chiniupa"];
            self.descLabel.text  = @"这小姑娘吃个牛排比杀牛还费劲啊";
            break;
        case 5:
            self.mainImageView.image = [UIImage imageNamed:@"danteng"];
            self.descLabel.text  = @"亲，你能改下你的网名么？哈哈";
            break;
        default:
            break;
    }
    self.rightBtn.enabled = YES;
}


@end
