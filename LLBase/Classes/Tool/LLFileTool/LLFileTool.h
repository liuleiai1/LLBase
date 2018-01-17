//
//  LLFileTool.h
//
//  Created by 迦南 on 2017/7/27.
//  Copyright © 2017年 ray. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LLFileTool : NSObject

/**
 *  获取文件夹尺寸
 *
 *  @param directoryPath 文件夹路径
 */
+ (void)getFileSize:(NSString *)directoryPath completion:(void(^)(NSInteger))completion;


/**
 *  删除文件夹所有文件
 *
 *  @param directoryPath 文件夹路径
 */
+ (void)removeDirectoryPath:(NSString *)directoryPath;

@end
