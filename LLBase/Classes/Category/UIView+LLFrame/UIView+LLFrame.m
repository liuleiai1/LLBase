//
//  UIView+LLFrame.m
//
//  Created by 迦南 on 2017/7/14.
//  Copyright © 2017年 ray. All rights reserved.
//

#import "UIView+LLFrame.h"

@implementation UIView (LLFrame)

- (CGFloat)ll_left {

    return self.frame.origin.x;
}


- (void)setLl_left:(CGFloat)ll_left {

    CGRect frame = self.frame;
    frame.origin.x = ll_left;
    self.frame = frame;
}


- (CGFloat)ll_top {

    return self.frame.origin.y;
}


- (void)setLl_top:(CGFloat)ll_top {

    CGRect frame = self.frame;
    frame.origin.y = ll_top;
    self.frame = frame;
}


- (CGFloat)ll_right {
    
    return self.ll_left + self.ll_width;
}


- (void)setLl_right:(CGFloat)ll_right {

    CGRect frame = self.frame;
    frame.origin.x = ll_right - frame.size.width;
    self.frame = frame;
}


- (CGFloat)ll_bottom {

    return self.ll_top + self.ll_height;
}


- (void)setLl_bottom:(CGFloat)ll_bottom {

    CGRect frame = self.frame;
    frame.origin.y = ll_bottom - frame.size.height;
    self.frame = frame;
}


- (CGFloat)ll_centerX {

    return self.center.x;
}


- (void)setLl_centerX:(CGFloat)ll_centerX {

    self.center = CGPointMake(ll_centerX, self.center.y);
}


- (CGFloat)ll_centerY {

    return self.center.y;
}


- (void)setLl_centerY:(CGFloat)ll_centerY {

    self.center = CGPointMake(self.center.x, ll_centerY);
}


- (CGFloat)ll_width {

    return self.frame.size.width;
}


- (void)setLl_width:(CGFloat)ll_width {

    CGRect frame = self.frame;
    frame.size.width = ll_width;
    self.frame = frame;
}


- (CGFloat)ll_height {

    return self.frame.size.height;
}


- (void)setLl_height:(CGFloat)ll_height {

    CGRect frame = self.frame;
    frame.size.height = ll_height;
    self.frame = frame;
}


- (CGPoint)ll_origin {

    return self.frame.origin;
}


- (void)setLl_origin:(CGPoint)ll_origin {

    CGRect frame = self.frame;
    frame.origin = ll_origin;
    self.frame = frame;
}


- (CGSize)ll_size {

    return self.frame.size;
}


- (void)setLl_size:(CGSize)ll_size {

    CGRect frame = self.frame;
    frame.size = ll_size;
    self.frame = frame;
}

@end
