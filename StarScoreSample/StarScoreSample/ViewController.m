//
//  ViewController.m
//  StarScoreSample
//
//  Created by Jeff Chen on 2016/8/3.
//  Copyright © 2016年 Jeff Chen. All rights reserved.
//

#import "ViewController.h"
#import "GTStarsScore.h"
#import "UIView+Extention.h"

@interface ViewController ()<GTStarsScoreDelegate>{
    GTStarsScore *starsScore;
    double scoreStar;
    double inputScore;
}
@property (weak, nonatomic) IBOutlet UITextField *inputStarScoreTextField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // add score function
    starsScore = [[GTStarsScore alloc]initWithFrame:CGRectMake(145, 200, 0, 20)];
    starsScore.delegate = self;
    [self.view addSubview:starsScore];
}

- (IBAction)starScoreBtnPressed:(id)sender {
    //給評分，改變黃色星星顯示
    inputScore = self.inputStarScoreTextField.text.doubleValue;
    starsScore.yellowView.gt_width = 360.0 / 5.0 * inputScore;
}


- (void)starsScore:(GTStarsScore *)starsScore valueChange:(CGFloat)value {
    //點選灰色星星直接顯示評分
    UILabel *scoreLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
    scoreLabel.backgroundColor = [UIColor colorWithWhite:0 alpha:0.6];
    scoreLabel.layer.masksToBounds = YES;
    scoreLabel.layer.cornerRadius = 3;
    scoreLabel.textColor = [UIColor whiteColor];
    scoreLabel.textAlignment = NSTextAlignmentCenter;
    scoreLabel.center = self.view.center;
    [self.view.window addSubview:scoreLabel];
    
    scoreLabel.text = [NSString stringWithFormat:@"行程評分: %.2lf", 5 * value];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [scoreLabel removeFromSuperview];
    });
    scoreStar = value * 5;
    NSLog(@"評分: %.2lf", scoreStar);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
