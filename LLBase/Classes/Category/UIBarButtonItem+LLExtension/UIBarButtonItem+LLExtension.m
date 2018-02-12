//
//  UIBarButtonItem+LLExtension.m
//
//  Created by 迦南 on 2017/7/20.
//  Copyright © 2017年 ray. All rights reserved.
//

#import "UIBarButtonItem+LLExtension.h"

@implementation UIBarButtonItem (LLExtension)

+ (instancetype)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action {
    
     return [self itemWithimage:image highImage:highImage title:nil titleNorColor:nil titleHighColor:nil target:target action:action];
}


+ (instancetype)itemWithTitle:(NSString *)title norColor:(UIColor *)norColor highColor:(UIColor *)highColor target:(id)target action:(SEL)action {
    
    return [self itemWithimage:nil highImage:nil title:title titleNorColor:norColor titleHighColor:highColor target:target action:action];
}


+ (instancetype)itemWithimage:(UIImage *)image highImage:(UIImage *)highImage title:(NSString *)title titleNorColor:(UIColor *)norColor titleHighColor:(UIColor *)highColor target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:norColor forState:UIControlStateNormal];
    [button setTitleColor:highColor forState:UIControlStateHighlighted];

    [button setImage:image forState:UIControlStateNormal];
    [button setImage:highImage forState:UIControlStateHighlighted];

    [button sizeToFit];
    
    if (image && title) {
          button.titleEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    }

    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *containView = [[UIView alloc] initWithFrame:button.bounds];
    [containView addSubview:button];

    return  [[UIBarButtonItem alloc] initWithCustomView:containView];
}


+ (instancetype)itemWithimage:(UIImage *)image selImage:(UIImage *)selImage target:(id)target action:(SEL)action {
    
     return [self itemWithimage:image selImage:selImage title:nil titleNorColor:nil titleSelColor:nil target:target action:action];
}


+ (instancetype)itemWithTitle:(NSString *)title norColor:(UIColor *)norColor selColor:(UIColor *)selColor target:(id)target action:(SEL)action {
    
    return [self itemWithimage:nil selImage:nil title:title titleNorColor:norColor titleSelColor:selColor target:target action:action];
}


+ (instancetype)itemWithimage:(UIImage *)image selImage:(UIImage *)selImage title:(NSString *)title titleNorColor:(UIColor *)norColor titleSelColor:(UIColor *)selColor target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:norColor forState:UIControlStateNormal];
    [button setTitleColor:selColor forState:UIControlStateSelected];
    
    [button setImage:image forState:UIControlStateNormal];
    [button setImage:selImage forState:UIControlStateSelected];
    
    [button sizeToFit];
    
    if (image && title) {
        button.titleEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0);
    }
    
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    UIView *containView = [[UIView alloc] initWithFrame:button.bounds];
    [containView addSubview:button];
    
    return  [[UIBarButtonItem alloc] initWithCustomView:containView];
}


@end
