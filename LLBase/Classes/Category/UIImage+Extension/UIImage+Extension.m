//
//  UIImage+Extension.m
//  Created by apple on 14-4-2.
//  Copyright (c) 2014年 itcast. All rights reserved.
//  UIImage分类方法

#import "UIImage+Extension.h"

#pragma mark - UIImage (Extension)
@implementation UIImage (Extension)
  
/* 返回一个没有被渲染的图片 **/
+ (instancetype)imageOriginalWithName:(NSString *)imageName {

    UIImage *image = [UIImage imageNamed:imageName];
    return [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}
    
/* 返回一个不被拉伸的图片 **/
+ (instancetype)resizableImage:(UIImage *)image {
    
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}
    
@end

#pragma mark - UIImage (LLBasic)
@implementation UIImage (LLBasic)

/* 截图 **/
+ (instancetype)captureWithView:(UIView *)view {
    
    // 1.开启上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    
    // 2.将控制器view的layer渲染到上下文
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    // 3.取出图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 4.结束上下文
    UIGraphicsEndImageContext();
    
    // 5.返回图片
    return image;
}

/* 图片裁剪 **/
+ (instancetype)clipImageWithName:(NSString *)name borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    
    // 1.加载原图
    UIImage *oldImg = [UIImage imageNamed:name];
    
    // 2.创建图形上下文
    CGSize size = oldImg.size;
    CGFloat drawWH = size.width < size.height ? size.width : size.height;
    
    CGFloat borderW = borderWidth; // 圆环的宽度
    CGFloat imgW = drawWH + borderW * 2;
    CGFloat imgH =drawWH + borderW * 2;
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(imgW, imgH), NO, 0.0);
    
    // 3.取得当前上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 4.画大圆
    [borderColor set]; // 边框颜色
    CGFloat bigRadius = imgW / 2; // 大圆半径
    CGFloat centerX = bigRadius; // 圆心
    CGFloat centerY = bigRadius;
    CGContextAddArc(ctx, centerX, centerY, bigRadius, 0, M_PI * 2, 0);
    CGContextFillPath(ctx);
    
    // 5.画小圆
    CGFloat smallRadius = bigRadius - borderW; // 小圆半径
    CGContextAddArc(ctx, centerX, centerY, smallRadius, 0, M_PI * 2, 0);
    
    // 6.裁剪
    CGContextClip(ctx);
    
    // 7.画图
    [oldImg drawInRect:CGRectMake(borderW, borderW, oldImg.size.width, oldImg.size.height)];
    
    // 8.取出图片
    UIImage *newImg = UIGraphicsGetImageFromCurrentImageContext();
    
    // 9.结束上下文
    UIGraphicsEndImageContext();
    
    // 返回图片
    return newImg;
}

/* 打水印 **/
+ (instancetype)watermarkWithBg:(NSString *)bg logo:(NSString *)logo {
    
    UIImage *oldImg = [UIImage imageNamed:bg];
    
    // 1.创建一个基于位图的图形上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(oldImg.size.width, oldImg.size.height), NO, 0.0);
    
    // 2.画背景
    [oldImg drawInRect:CGRectMake(0, 0, oldImg.size.width, oldImg.size.height)];
    
    // 3.画水印
    UIImage *waterImg = [UIImage imageNamed:logo];
    
    CGFloat scale = 0.2;
    CGFloat margin = 5;
    CGFloat waterH = oldImg.size.height * scale;
    CGFloat waterW = oldImg.size.width * scale;
    CGFloat waterX = oldImg.size.width - waterW - margin;
    CGFloat waterY = oldImg.size.height - waterH - margin;
    
    [waterImg drawInRect:CGRectMake(waterX, waterY, waterW, waterH)];
    
    // 4.从上下文中取出制作完成的图像
    UIImage *newImg = UIGraphicsGetImageFromCurrentImageContext();
    
    // 5.结束上下文
    UIGraphicsEndImageContext();
    
    // 6.返回image
    return newImg;    
}

@end
