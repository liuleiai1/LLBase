//
//  UIImage+Extension.h
//  Created by apple on 14-4-2.
//  Copyright (c) 2014年 itcast. All rights reserved.
//  UIImage分类方法

#import <UIKit/UIKit.h>

#pragma mark - UIImage (Extension)
@interface UIImage (Extension)

/* 返回一个没有被渲染的图片 **/
+ (UIImage *)imageOriginalWithName:(NSString *)imageName;
    
/* 返回一个不被拉伸的图片 **/
+ (UIImage *)resizableImage:(UIImage *)image;
@end

#pragma mark - UIImage (LLBasic)
@interface UIImage (LLBasic)

/* 截图 **/
+ (UIImage *)captureWithView:(UIView *)view;

/* 图片裁剪 **/
+ (UIImage *)clipImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
- (UIImage *)circleImage;

/* 打水印 **/
+ (UIImage *)watermarkWithBg:(NSString *)bg logo:(NSString *)logo;
@end
