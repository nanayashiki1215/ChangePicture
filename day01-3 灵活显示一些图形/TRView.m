//
//  TRView.m
//  day01-3 灵活显示一些图形
//
//  Created by tarena on 14-11-15.
//  Copyright (c) 2014年 tarena. All rights reserved.
//

#import "TRView.h"

@implementation TRView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *path = [[UIBezierPath alloc]init];
    //通过四个点确定图形
    [path moveToPoint:CGPointMake(100, 20)];
    [path addCurveToPoint:CGPointMake(50, 120) controlPoint1:CGPointMake(50, 20) controlPoint2:CGPointMake(100, 120)];
    [[UIColor redColor]setStroke];
    //完成下半部分...
    [path stroke];
    
    //圆角按钮 参数1 按钮图形frame 参数2 角度
    UIBezierPath *path2 = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(150, 50, 100, 80) cornerRadius:10];
    [path2 stroke];
    
    //椭圆
    UIBezierPath *path3 = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(50, 160, 180, 80)];
    [path3 stroke];
    
}


@end









