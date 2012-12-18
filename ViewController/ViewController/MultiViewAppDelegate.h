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

@interface MultiViewAppDelegate : UIResponder <UIApplicationDelegate>
{
    UIViewController *rootController_;
}


@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, retain) UIViewController *rootController;



@end