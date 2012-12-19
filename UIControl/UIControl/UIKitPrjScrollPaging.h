//
//  UIKitPrjScrollPaging.h
//  UIControl
//
//  Created by Justin on 12-12-19.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIKitPrjScrollPaging : UIViewController
{
    UIScrollView *scrollView;
    UIPageControl *pageControl;
    BOOL pageControlIsChangingPage;
    NSMutableArray *images;
}

- (void) changePage:(id) sender;
- (void) setupPage;

@end
