//
//  ViewController.m
//  01-加法计算器
//
//  Created by Apple on 14/12/9.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


//第一个文本框
@property (nonatomic,weak) IBOutlet UITextField * num1TextField;


//第一个文本框
@property (nonatomic,weak) IBOutlet UITextField * num2TextField;


//第一个文本框
@property (nonatomic,weak) IBOutlet UILabel * resultLabel;


//计算
- (IBAction) caculate;

@end

@implementation ViewController

/*
 IBAction  
 1.相当于void
 2.只有返回值类型声明IBAction方法才有资格与storybaord
 IBOutlet
 它就是一个标识符，标志这个属性可以与storyboard进行连线
 */

//计算
- (IBAction) caculate
{
    
//  取出文本框的值
    NSString *num1Text  = self.num1TextField.text;
    NSString *num2Text  = self.num2TextField.text;
//  把字符串转换为int类型
    int result = num1Text.intValue + num2Text.intValue;
    
//  改变文本标签显示内容
//    NSLog(@"%@",num1Text);
    self.resultLabel.text = [NSString stringWithFormat:@"%d",result];
 
//  退出键盘
//  resignFirstResponder 只有叫出键盘的那个控件调用这个方法才能退出键盘
//  [self.num1TextField resignFirstResponder];
//  [self.num2TextField resignFirstResponder];
//  只要是自己或自己的子控件叫出来的键盘，都可通过这个方法来退出键盘
    [self.view endEditing:YES];
}

@end
