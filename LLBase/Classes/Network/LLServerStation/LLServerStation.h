//
//  LLServerStation.h
//
//  Created by 迦南 on 2017/7/21.
//  Copyright © 2017年 ray. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    MethodTypeGet,
    MethodTypePost
    
} MethodType;

@interface LLServerStation : NSObject

+ (instancetype)shareInstance;

// 取消请求
- (void)cancelLoadData;

// 请求数据
- (void)request:(MethodType)type URLString: (NSString *)url parameters: (NSDictionary *)parameters resultBlock: (void(^)(id responseObject, NSError *error))resultBlock;

@end
