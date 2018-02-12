//
//  Define.h
//
//  Created by 迦南 on 2017/7/14.
//  Copyright © 2017年 ray. All rights reserved.
//

#ifndef Define_h
#define Define_h

#ifdef DEBUG
#define LLLog(...) NSLog(__VA_ARGS__)
#else
#define LLLog(...)
#endif

// 生成字符串
#define NSString(...)  [NSString stringWithFormat:__VA_ARGS__]

// 打印当前类的调用方法
#define LLFunc LLLog(@"%s",__func__)

// 设备屏幕高度
#define SCR_HIGHT    [UIScreen mainScreen].bounds.size.height

// 设备屏幕宽度
#define SCR_WIDTH    [UIScreen mainScreen].bounds.size.width

// 屏幕适配
#define iphone6P (SCR_HIGHT == 736)
#define iphone6 (SCR_HIGHT == 667)
#define iphone5 (SCR_HIGHT == 568)
#define iphone4 (SCR_HIGHT == 480)

#define iphone_X (IS_IOS_11 && (MIN([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) == 375 && MAX([UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height) == 812))

// iOS 11
#define IS_IOS_11  ([[[UIDevice currentDevice] systemVersion] floatValue] >= 11.f)

// APP的字体 暂且为系统字体
#define fontApp(size)   [UIFont systemFontOfSize:size]

// 随机色
#define Random_color [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];

// 字体颜色
#define RGBA(r,g,b,a)         [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define RGB(r,g,b)            [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:1.0]

#define WS(weakSelf)            __weak __typeof(&*self)weakSelf = self;

#endif /* Define_h */
