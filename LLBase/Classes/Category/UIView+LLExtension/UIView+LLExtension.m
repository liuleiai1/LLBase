//
//  UIView+LLExtension.m
//  Expecta
//
//  Created by 迦南 on 2018/1/5.
//

#import "UIView+LLExtension.h"
#import "NSObject+LLExtension.h"

@implementation UIView (LLExtension)

+ (instancetype)loadFromNib {
    
    UIView *view = [[self currentBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil].firstObject;
    return view;
}

@end
