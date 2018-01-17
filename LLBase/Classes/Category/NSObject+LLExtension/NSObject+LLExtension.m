//
//  NSObject+LLExtension.m
//  Expecta
//
//  Created by 迦南 on 2018/1/5.
//

#import "NSObject+LLExtension.h"

@implementation NSObject (LLExtension)

+ (NSBundle *)currentBundle {
    
    NSBundle *bundle = [NSBundle bundleForClass:self];
    return bundle;
}

@end
