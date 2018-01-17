//
//  LLServerStation.m
//
//  Created by 迦南 on 2017/7/21.
//  Copyright © 2017年 ray. All rights reserved.
//

#import "LLServerStation.h"
#import "AFNetworking.h"

static LLServerStation *_instance = nil;

@interface LLServerStation ()

@property (nonatomic, weak) AFHTTPSessionManager *manager;
@end

@implementation LLServerStation

- (AFHTTPSessionManager *)manager {
    if (nil == _manager) {
        AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
        
        NSMutableSet *setM = [mgr.responseSerializer.acceptableContentTypes mutableCopy];
        [setM addObject:@"text/plain"];
        [setM addObject:@"text/html"];
        mgr.responseSerializer.acceptableContentTypes = [setM copy];
        
        _manager = mgr;
    }
    return _manager;
}

+ (instancetype)shareInstance {
    
    LLServerStation *instance = [[self alloc] init];
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[super allocWithZone:zone] init];
    });
    return _instance;
}

// 取消请求
- (void)cancelLoadData {

    [self.manager.tasks makeObjectsPerformSelector:@selector(cancel)];
}

- (void)request:(MethodType)type URLString: (NSString *)url parameters: (NSDictionary *)parameters resultBlock: (void(^)(id responseObject, NSError *error))resultBlock {
    
    void(^successBlock)(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) = ^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        resultBlock(responseObject, nil);
    };
    
    void(^failBlock)(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) = ^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        resultBlock(nil, error);
    };
    
    if (type == MethodTypeGet) {
        [self.manager GET:url parameters:parameters progress:nil success:successBlock failure:failBlock];
    }else {
        [self.manager POST:url parameters:parameters progress:nil success:successBlock failure:failBlock];
    }
}

@end
