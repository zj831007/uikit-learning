//
//  UIViewAppDelegate.m
//  UIView
//
//  Created by Justin on 12-12-16.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "UIViewAppDelegate.h"
#import "LayoutTest.h"


@implementation UIViewAppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    //frame
    UILabel *label = [[[UILabel alloc] initWithFrame:CGRectZero] autorelease];
    label.text = @"Hello World";
    label.frame = CGRectMake(0, 0, 200, 50);
    label.center = CGPointMake(160, 240);
    //label.backgroundColor = [UIColor redColor];
    label.backgroundColor = [[UIColor alloc] initWithRed:1.0 green:0.5 blue:0.5 alpha:1];
    label.alpha = 0.2;
    
    [label sizeToFit];
    
    NSLog(@"x = %f", label.frame.origin.x);
    NSLog(@"y = %f", label.frame.origin.y);
    NSLog(@"width = %f", label.frame.size.width);
    NSLog(@"height = %f", label.frame.size.height);
    NSLog(@"x = %f", label.center.x);
    NSLog(@"y = %f", label.center.y);
    
    //[self.window addSubview:label];
    
    
    LayoutTest *layoutText = [[LayoutTest alloc] init];
    [self.window addSubview:layoutText];
    [layoutText release];
    
    
//    UIView *child1 = (UIView *)[layoutText.subviews objectAtIndex:0];
//    child1.frame = CGRectMake(0, 0, 160, 160);
//    child1.center = layoutText.center;
//    //[layoutText setNeedsLayout];
//    [layoutText layoutIfNeeded];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
