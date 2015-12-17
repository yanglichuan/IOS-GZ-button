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
     [self animationWithName:@"drink" andImageCount:80];
}

- (IBAction)knockOut {
    [self animationWithName:@"knockout" andImageCount:80];
}

- (IBAction)eat {
    [self animationWithName:@"eat" andImageCount:39];
}

- (IBAction)pie {
    [self animationWithName:@"pie" andImageCount:23];
}

- (IBAction)fark {
    [self animationWithName:@"fart" andImageCount:27];
}

- (IBAction)cymbal {
    [self animationWithName:@"cymbal" andImageCount:12];
}

- (IBAction)scratch {
    [self animationWithName:@"scratch" andImageCount:55];
}

- (IBAction)footLeft {
    [self animationWithName:@"footLeft" andImageCount:29];
}

- (IBAction)footRight {
      [self animationWithName:@"footRight" andImageCount:29];
}

- (IBAction)stomach {
    [self animationWithName:@"stomach" andImageCount:33];
}
//把相同代码抽取到一个方法中，不同数据通过参数传入
- (void)animationWithName:(NSString *) name andImageCount:(int) imageCount
{
//  如果当前正在执行动画，就不要在执行其他动画了
    if (self.tomcatImageView.isAnimating) {
        return;
    }
    
    NSMutableArray *images = [NSMutableArray arrayWithCapacity:imageCount];
    
    for (int i = 0; i <= imageCount; i++) {
        //      1、根据索引生成图片名称
        NSString *imageName = [NSString stringWithFormat:@"%@_%02d",name,i];
        
        
        //      2、根据图片名称创建图片
//    使用 imageNamed: 创建出来的图片默认会进行缓存
//        UIImage *image =  [UIImage imageNamed:imageName];
//   imageWithContentsOfFile: 不会缓存数据
//      获取图片全路径，注意如果图片在images.xcassets中图片会被压缩到一个包中，无法获取它的全路径
        NSString *path = [[NSBundle mainBundle] pathForResource:imageName ofType:@"jpg"];

//        NSLog(@"%@",path);
//      file指的是这个图片的全路径
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        
    
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
    
    [self.tomcatImageView performSelector:@selector(setAnimationImages:) withObject:nil afterDelay:self.tomcatImageView.animationDuration + 1];
}

@end
