//
//  UIImageView+LLExtension.m
//  Expecta
//
//  Created by 迦南 on 2018/1/5.
//

#import "UIImageView+LLExtension.h"
#import "UIImage+Extension.h"
#import "UIImageView+WebCache.h"

@implementation UIImageView (LLExtension)

- (void)setURLImageWithURL: (NSURL *)url progress:(void(^)(CGFloat progress))progress complete: (void(^)())complete {
    
    [self sd_setImageWithURL:url placeholderImage:nil options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        if (progress != nil)
        {
            progress(1.0 * receivedSize / expectedSize);
        }
        
    } completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        self.image = image;
        if (complete != nil)
        {
            complete();
        }
    }];    
}

- (void)setURLImageWithURL: (NSURL *)url placeHoldImage:(NSString *)placeHoldImageStr isCircle:(BOOL)isCircle {
    
    if (isCircle) {
        [self sd_setImageWithURL:url placeholderImage:[UIImage clipImageWithName:placeHoldImageStr borderWidth:0 borderColor:nil] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            UIImage *resultImage = [UIImage clipImageWithName: [NSString stringWithContentsOfURL:imageURL encoding:NSUTF8StringEncoding error:nil] borderWidth:0 borderColor:nil];
            
            // 6. 处理结果图片
            if (resultImage == nil) return;
            self.image = resultImage;
        }];
        
    }else {
        [self sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:placeHoldImageStr] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
            
            // 6. 处理结果图片
            if (image == nil) return;
            self.image = image;
        }];
    }
}

@end
