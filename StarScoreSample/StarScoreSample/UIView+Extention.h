//
//  UIView+Extention.h
//  StarScoreSample
//
//  Created by Jeff Chen on 2016/8/3.
//  Copyright © 2016年 Jeff Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

// frame
@interface UIView (frame)

/** 最小的x */
@property (nonatomic, assign) CGFloat gt_minX;

/** 最小的y */
@property (nonatomic, assign) CGFloat gt_minY;

/** centerX */
@property (nonatomic, assign) CGFloat gt_midX;

/** centerY */
@property (nonatomic, assign) CGFloat gt_midY;

/** 最大的x */
@property (nonatomic, assign) CGFloat gt_maxX;

/** 最大的y */
@property (nonatomic, assign) CGFloat gt_maxY;

/** view的寬度 */
@property (nonatomic, assign) CGFloat gt_width;

/** view的高度 */
@property (nonatomic, assign) CGFloat gt_height;

/** size */
@property (nonatomic, assign) CGSize gt_size;

/** origin */
@property (nonatomic, assign) CGPoint gt_origin;
@end


@interface UIView (image)
- (UIImage *)imageByViewshots;
@end



@interface UIView (responder)
- (UIViewController *)viewController;
@end


















