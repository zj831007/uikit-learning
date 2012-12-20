//
//  DrawStrings.m
//  AnimationAndImages
//
//  Created by Justin on 12-12-20.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "DrawStrings.h"

@implementation DrawStrings
@synthesize message = message_;

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
    
    UIFont *systemFont = [UIFont systemFontOfSize:[UIFont systemFontSize]];
    [self.message drawAtPoint:CGPointMake(0, 10) withFont:systemFont];
    
}


@end
