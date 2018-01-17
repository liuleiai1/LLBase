//
//  UIColor+LLExtension.h
//
//  Created by 迦南 on 2017/7/12.
//  Copyright © 2017年 迦南. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LLExtension)

/** 生成随机色*/
+ (UIColor *)randomColor;

/** 根据16进制的字符串生成相应的颜色,默认透明度为1.0*/
+ (UIColor *)colorWithHex:(NSString *)hexColor;

/** 根据16进制的字符串和传入的alpha生成相应的颜色*/
+ (UIColor *)colorWithHex:(NSString *)hexColor alpha:(float)alpha;


@end
