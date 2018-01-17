//
//  UIImageView+LLExtension.h
//  Expecta
//
//  Created by 迦南 on 2018/1/5.
//

#import <UIKit/UIKit.h>

@interface UIImageView (LLExtension)

- (void)setURLImageWithURL: (NSURL *)url progress:(void(^)(CGFloat progress))progress complete: (void(^)())complete;

- (void)setURLImageWithURL: (NSURL *)url placeHoldImage:(UIImage *)placeHoldImage isCircle:(BOOL)isCircle;

@end
