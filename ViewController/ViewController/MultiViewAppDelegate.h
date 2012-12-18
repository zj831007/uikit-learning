//
//  ViewControllerAppDelegate.h
//  ViewController
//
//  Created by Justin on 12-12-17.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController1.h"
#import "ViewController2.h"

@interface ViewControllerAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIViewController *viewController1_;
    UIViewController *viewController2_;
}


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UIViewController *viewController1;
@property (nonatomic, retain) UIViewController *viewController2;



@end