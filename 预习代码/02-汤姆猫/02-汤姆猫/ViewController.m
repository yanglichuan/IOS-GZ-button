//
//  ViewController.m
//  02-汤姆猫
//
//  Created by 李 德山 on 14-9-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *tomcatImageView;

- (IBAction)drink;
- (IBAction)knockOut;
- (IBAction)eat;
- (IBAction)pie;
- (IBAction)fark;
- (IBAction)cymbal;
- (IBAction)scratch;
- (IBAction)footLeft;
- (IBAction)footRight;
- (IBAction)stomach;

@end

@implementation ViewController


- (IBAction)drink {
    
    int imageCount = 80;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i < imageCount; i++) {
//      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"drink_%02d",i];
//      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
//      3、把图片添加到数组中
        [images addObject:image];
    }
//  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
//  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
//  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
//  开始动画
    [self.tomcatImageView startAnimating];
    
    
}

- (IBAction)knockOut {
    
    int imageCount = 80;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"knockout_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
    
}

- (IBAction)eat {
    int imageCount = 39;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"eat_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
}

- (IBAction)pie {
    int imageCount = 23;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"pie_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
}

- (IBAction)fark {
    int imageCount = 27;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"fart_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
}

- (IBAction)cymbal {
    int imageCount = 12;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"cymbal_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
}

- (IBAction)scratch {
    int imageCount = 55;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"scratch_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
}

- (IBAction)footLeft {
    
    int imageCount = 29;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"footLeft_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
    
}

- (IBAction)footRight {
    
    int imageCount = 29;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"footRight_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
    
}

- (IBAction)stomach {
    
    int imageCount = 33;
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"stomach_%02d",i];
        //      2、根据图片名称创建图片
        UIImage *image =  [UIImage imageNamed:imageName];
        //      3、把图片添加到数组中
        [images addObject:image];
    }
    //  把image赋值给执行动画所需要图片
    self.tomcatImageView.animationImages = images;
    //  设置动画执行的时间
    
    self.tomcatImageView.animationDuration = imageCount * 0.05;
    
    //  设置动画执行的重复次数
    self.tomcatImageView.animationRepeatCount = 1;
    //  开始动画
    [self.tomcatImageView startAnimating];
}
@end
