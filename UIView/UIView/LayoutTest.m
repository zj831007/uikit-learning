//
//  LayoutTest.m
//  UIView
//
//  Created by Justin on 12-12-17.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "LayoutTest.h"

@implementation LayoutTest

- (id)init
{
    if (self = [super init]) {
        self.frame = CGRectMake(0, 0, 320, 320);
        child1_ = [[UILabel alloc] initWithFrame:CGRectZero];
        child1_.text = @"Child 1";
        [child1_ sizeToFit];
        child1_.backgroundColor = [UIColor redColor];
        child1_.textColor = [UIColor whiteColor];
        
        child2_ = [[UILabel alloc] initWithFrame:CGRectZero];
        child2_.text = @"Child 2";
        [child2_ sizeToFit];
        child2_.backgroundColor = [UIColor blueColor];
        child2_.textColor = [UIColor whiteColor];
        //child2_.center = CGPointMake(child2_.center.x, child2_.center.y);
        
        [self addSubview:child1_];
        [self addSubview:child2_];
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    //把child1_移到左下
    CGRect newRect = child1_.frame;
    newRect.origin.x = 0;
    newRect.origin.y = self.frame.size.height - child1_.frame.size.height;
    child1_.frame = newRect;
    
    
    newRect = child2_.frame;
    newRect.origin.x = self.frame.size.width - child2_.frame.size.width;
    newRect.origin.y = child2_.frame.size.height;
    child2_.frame = newRect;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void) dealloc
{
    [child1_ release];
    [child2_ release];
    [super dealloc];
}

@end
