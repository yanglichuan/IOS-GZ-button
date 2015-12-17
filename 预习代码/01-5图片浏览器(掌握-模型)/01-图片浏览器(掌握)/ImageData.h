//
//  ImageData.h
//  01-图片浏览器(掌握)
//
//  Created by 李 德山 on 14-9-22.
//  Copyright (c) 2014年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ImageData : NSObject
@property (nonatomic,copy) NSString * imageName;
@property (nonatomic,copy) NSString * desc;

+ (id) imageDataWithDict:(NSDictionary *) dict;

-(id) initWithDict:(NSDictionary *) dict;



@end
