//
//  UIBarButtonItem+LLExtension.h
//
//  Created by 迦南 on 2017/7/20.
//  Copyright © 2017年 ray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LLExtension)

/**
 *  快速创建UIBarButtonItem(高亮状态)
 */
+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title norColor:(UIColor *)norColor highColor:(UIColor *)highColor target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage title:(NSString *)title titleNorColor:(UIColor *)norColor titleHighColor:(UIColor *)highColor target:(id)target action:(SEL)action;


/**
 *  快速创建UIBarButtonItem(选中状态)
 */
+ (UIBarButtonItem *)itemWithimage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title norColor:(UIColor *)norColor selColor:(UIColor *)selColor target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)itemWithimage:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title titleNorColor:(UIColor *)norColor titleSelColor:(UIColor *)selColor target:(id)target action:(SEL)action;

@end
