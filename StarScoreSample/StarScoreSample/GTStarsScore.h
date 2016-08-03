//
//  GTStarsScore.h
//  StarScoreSample
//
//  Created by Jeff Chen on 2016/8/3.
//  Copyright © 2016年 Jeff Chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GTStarsScoreDelegate;
@interface GTStarsScore : UIView
@property (nonatomic, strong) id<GTStarsScoreDelegate> delegate;
/** 灰色星星視圖 */
@property (nonatomic, strong) UIView *grayView;
/** 黄色星星視圖 */
@property (nonatomic, strong) UIView *yellowView;
/** 分數比例 10分 / 100 = 0.1 */
@property (nonatomic, assign) CGFloat scoreScale;
@end

@protocol GTStarsScoreDelegate<NSObject>
- (void)starsScore:(GTStarsScore *)starsScore valueChange:(CGFloat)value;
//- (void)changeYellowView:(CGPoint)point;
@end

