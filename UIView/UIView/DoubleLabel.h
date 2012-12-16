//
//  DoubleLabel.h
//  UIView
//
//  Created by Justin on 12-12-16.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DoubleLabel : UIView
{
    UILabel *label1_;
    UILabel *label2_;
}

@property (nonatomic, retain) UILabel *label1;
@property (nonatomic, retain) UILabel *label2;

@end
