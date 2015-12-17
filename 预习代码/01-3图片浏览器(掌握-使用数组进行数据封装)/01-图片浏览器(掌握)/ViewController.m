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


@property (strong,nonatomic) NSArray * datas;

- (IBAction)previous;

- (IBAction)next;


@property (nonatomic,assign) int index;

@end

@implementation ViewController

- (void)viewDidLoad {
    self.index = 1;
    [self changeImage];
}


#pragma mark 使用懒加载的方式初始化数据(数据只有用到了才去加载，节约内存)

-(NSArray *) datas
{
    if (_datas == nil) {
        NSDictionary *dict1 = @{@"icon":@"biaoqingdi",
                                @"desc":@"在他面前，其他神马表情都弱爆了！"};
        NSDictionary *dict2 = @{@"icon":@"wangba",
                                @"desc":@"哥们为什么选八号呢"};
        NSDictionary *dict3 = @{@"icon":@"bingli",
                                @"desc":@"这也忒狠了！"};
        NSDictionary *dict4 = @{@"icon":@"chiniupa",
                                @"desc":@"这小姑娘吃个牛排比杀牛还费劲啊！"};
        NSDictionary *dict5 = @{@"icon":@"danteng",
                                @"desc":@"亲，你能改下你的网名么？哈哈！"};
        self.datas = @[dict1,dict2,dict3,dict4,dict5];
        
    }
    return _datas;
}



- (IBAction)next {
    self.index++;
    [self changeImage];
  
}

- (IBAction)previous {
    self.index--;
    [self changeImage];
}

//把重复代码封装到一个方法中，减少代码的重复，提高代码的可维护性
- (void) changeImage
{
    self.indexLabel.text =  [NSString stringWithFormat:@"%d/%d",self.index,5];
 
//  从数组中取出字典
    NSDictionary *data =self.datas[self.index - 1];
//  使用字典给属性赋值
    self.mainImageView.image = [UIImage imageNamed:data[@"icon"]];
    self.descLabel.text = data[@"desc"];
//  设置左边按钮是否可用
    self.leftBtn.enabled = (self.index != 1);
//  设置右边按钮是否可用
    self.rightBtn.enabled = (self.index != 5);
}

@end
