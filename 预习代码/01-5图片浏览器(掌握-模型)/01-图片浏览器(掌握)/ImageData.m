//
//  ImageData.m
//  01-图片浏览器(掌握)
//
//  Created by 李 德山 on 14-9-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import "ImageData.h"


@implementation ImageData

+ (id) imageDataWithDict:(NSDictionary *) dict
{
    return [[self alloc] initWithDict:dict];
}

-(id) initWithDict:(NSDictionary *) dict
{
    if (self = [super init]) {
        self.imageName = dict[@"icon"];
        self.desc = dict[@"desc"];
    }
    return self;
}

@end
