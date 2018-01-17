//
//  UIView+LLFrame.h
//
//  Created by 迦南 on 2017/7/14.
//  Copyright © 2017年 ray. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LLFrame)

/**
 * Shortcut for frame.size.width
 *
 * Sets frame.size.width = width
 */
@property (nonatomic, assign) CGFloat ll_width;


/**
 * Shortcut for frame.size.height
 *
 * Sets frame.size.height = height
 */
@property (nonatomic, assign) CGFloat ll_height;


/**
 * Shortcut for frame.origin.x.
 *
 * Sets frame.origin.x = left
 */
@property (nonatomic, assign) CGFloat ll_left;


/**
 * Shortcut for frame.origin.x + frame.size.width
 *
 * Sets frame.origin.x = right - frame.size.width
 */
@property (nonatomic, assign) CGFloat ll_right;


/**
 * Shortcut for frame.origin.y
 *
 * Sets frame.origin.y = top
 */
@property (nonatomic, assign) CGFloat ll_top;


/**
 * Shortcut for frame.origin.y + frame.size.height
 *
 * Sets frame.origin.y = bottom - frame.size.height
 */
@property (nonatomic, assign) CGFloat ll_bottom;


/**
 * Shortcut for frame.origin
 */
@property (nonatomic, assign) CGPoint ll_origin;


/**
 * Shortcut for frame.size
 */
@property (nonatomic, assign) CGSize ll_size;


/**
 * Shortcut for center.x
 */
@property (nonatomic, assign) CGFloat ll_centerX;


/**
 * Shortcut for center.y
 */
@property (nonatomic, assign) CGFloat ll_centerY;

@end
