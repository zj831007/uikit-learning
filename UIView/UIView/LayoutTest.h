//
//  LayoutTest.h
//  UIView
//
//  Created by Justin on 12-12-17.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LayoutTest : UILabel
{
    @private
    UILabel *child1_;
    UILabel *child2_;
}
@property(nonatomic, retain) UILabel *child1;
@property(nonatomic, retain) UILabel *child2;


@end
