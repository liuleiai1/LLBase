//
//  UITextField+LLPlacehoder.m
//
//  Created by 迦南 on 2017/7/26.
//  Copyright © 2017年 ray. All rights reserved.
//

#import "UITextField+LLPlaceholder.h"
#import <objc/message.h>

@implementation UITextField (LLPlaceholder)

+ (void)load
{
    // 交换自定义方法和系统方法
    Method setPlaceholderMethod = class_getInstanceMethod(self, @selector(setPlaceholder:));
    Method setLLPlaceholderMethod = class_getInstanceMethod(self, @selector(setLLPlaceholder:));
    
    method_exchangeImplementations(setPlaceholderMethod, setLLPlaceholderMethod);
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    
    // 1.利用修改attirbutedstring更改placeholder颜色
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSForegroundColorAttributeName] = placeholderColor;
//    self.attributedPlaceholder = [[NSAttributedString alloc] initWithString:self.placeholder attributes:attrs];
    
    
    // 2.利用kvc拿到placeholder进行修改
//    if (nil == self.placeholder) {
//        self.placeholder = @" ";
//    }
//    UILabel *placeholder = [self valueForKeyPath:@"placeholderLabel"];
//    placeholder.textColor = placeholderColor;
    
    
    // 3.利用runtime修改placeholder颜色
    // 给成员属性赋值 runtime给系统的类添加成员属性
    objc_setAssociatedObject(self, @"placeholderColor", placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    UILabel *placeholder = [self valueForKeyPath:@"placeholderLabel"];
    placeholder.textColor = placeholderColor;
}

- (UIColor *)placeholderColor {
    
    return objc_getAssociatedObject(self, @"placeholderColor");
}

- (void)setLLPlaceholder:(NSString *)placeholder
{
    [self setLLPlaceholder:placeholder];
    
    self.placeholderColor = self.placeholderColor;
}
@end
