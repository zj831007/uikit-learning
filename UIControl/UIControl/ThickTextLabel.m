//
//  ThickTextLabel.m
//  UIControl
//
//  Created by Justin on 12-12-19.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "ThickTextLabel.h"

@implementation ThickTextLabel

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
    for (int y=-2; y<=4; ++y) {
        for (int x=-2; x<=4; ++x) {
            CGRect drawRect = CGRectMake(rect.origin.x+x, rect.origin.y+y, rect.size.width, rect.size.height);
            [self.text drawInRect:drawRect withFont:self.font];
        }
    }
    
    
}


@end
