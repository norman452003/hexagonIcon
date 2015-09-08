//
//  IconView.m
//  IconDemo
//
//  Created by 龚欣 on 15/9/8.
//  Copyright (c) 2015年 GX. All rights reserved.
//

#import "IconView.h"

@interface IconView()

@property (nonatomic,weak) UIImageView *iconV;

@end

@implementation IconView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]){
        UIImageView *iconV = [[UIImageView alloc] init];
        [self addSubview:iconV];
        self.iconV = iconV;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    // Drawing code
    CGFloat viewWidth = rect.size.width-10;
    UIBezierPath * path = [UIBezierPath bezierPath];
    path.lineWidth = 5;
    
    [[UIColor lightGrayColor] setStroke];
    [path moveToPoint:CGPointMake((sin(M_1_PI / 180 * 60)) * (viewWidth / 2) + 2, (viewWidth / 4) + 5)];
    [path addLineToPoint:CGPointMake((viewWidth / 2)+ 2, 0+ 5)];
    [path addLineToPoint:CGPointMake(viewWidth - ((sin(M_1_PI / 180 * 60)) * (viewWidth / 2))+ 2, (viewWidth / 4)+ 5)];
    [path addLineToPoint:CGPointMake(viewWidth - ((sin(M_1_PI / 180 * 60)) * (viewWidth / 2))+ 2, (viewWidth / 2) + (viewWidth / 4)+ 5)];
    [path addLineToPoint:CGPointMake((viewWidth / 2)+ 2, viewWidth+ 4)];
    [path addLineToPoint:CGPointMake((sin(M_1_PI / 180 * 60)) * (viewWidth / 2)+ 2, (viewWidth / 2) + (viewWidth / 4)+ 5)];
    [path closePath];
    [path stroke];
    
    CAShapeLayer *shapLayer = [CAShapeLayer layer];
    shapLayer.lineWidth = 0;
    shapLayer.strokeColor = [UIColor redColor].CGColor;
    shapLayer.path = path.CGPath;
    
    self.iconV.image = [UIImage imageNamed:@"u=2205791892,1328528914&fm=116&gp=0.jpg"];
    self.iconV.frame = rect;
    self.iconV.layer.mask = shapLayer;
    self.iconV.clipsToBounds = YES;
    
    [super drawRect:rect];
    
}


@end
