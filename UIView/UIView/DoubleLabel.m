//
//  DoubleLabel.m
//  UIView
//
//  Created by Justin on 12-12-16.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "DoubleLabel.h"

@implementation DoubleLabel

@synthesize label1 = label1_;
@synthesize label2 = label2_;

- (id)init
{
    self = [super init];
    if (self) {
        label1_ = [[UILabel alloc] init];
        label2_ = [[UILabel alloc] init];
        
        
        // Initialization code
    }
    
    return self;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

//覆盖此方法调整自适应尺寸
- (CGSize)sizeThatFits:(CGSize)size
{
    
    CGFloat x1;
    
    if (label1_.frame.origin.x < label2_.frame.origin.x) {
        x1 = label1_.frame.origin.x;
    }
    else
    {
        x1 = label2_.frame.origin.x;
    }
    
    
    return size;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/
- (void)dealloc
{
    [label1_ release];
    [label2_ release];
    [super dealloc];
}


@end
