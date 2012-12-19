//
//  UIControlAppDelegate.m
//  UIControl
//
//  Created by Justin on 12-12-19.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "UIControlAppDelegate.h"

@implementation UIControlAppDelegate

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
    
    //UILabel
//    UILabel *label = [[[UILabel alloc] init] autorelease];
//    label.frame = self.window.bounds;
//    label.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
//    label.textAlignment = NSTextAlignmentCenter;
//    label.text = @"Hello";
//    label.backgroundColor = [UIColor blueColor];
//    label.textColor = [UIColor redColor];
//    label.font = [UIFont fontWithName:@"Zapfino" size:48];
//    label.shadowColor = [UIColor grayColor];
//    label.shadowOffset = CGSizeMake(10, 10);
//    [self.window addSubview:label];
    
    //uibutton
//    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
//    button.frame = CGRectMake(50, 50, 150, 40);
//    //button.center = CGPointMake(200, 200);
//    [button setTitle:@"normal" forState:UIControlStateNormal];
//    [button setTitle:@"Higlight" forState:UIControlStateHighlighted];
//    button.showsTouchWhenHighlighted = YES;
//    
//    [self.window addSubview:button];

    //uitextfield
//    UITextField *textField = [[[UITextField alloc] init] autorelease];
//    textField.frame = CGRectMake(20, 20, 200, 30);
//    textField.borderStyle = UITextBorderStyleLine;
//    textField.text = @"put text at here";
//    textField.clearButtonMode = UITextFieldViewModeAlways;
//    [self.window addSubview:textField];
//    [textField becomeFirstResponder];
    //[textField resignFirstResponder];
    
    //uiswitch
//    UISwitch *switch1 = [[UISwitch alloc] init];
//    switch1.center = CGPointMake(200, 200);
//    switch1.on = YES;
//    [self.window addSubview:switch1];
    
//    NSArray *items = [NSArray arrayWithObjects:@"Black", @"White", nil];
//    UISegmentedControl *segment = [[[UISegmentedControl alloc]initWithItems:items]autorelease];
//    segment.selectedSegmentIndex = 1;
//    segment.frame = CGRectMake(0, 30, 130, 30);
//    segment.segmentedControlStyle = UISegmentedControlStyleBar;
//    segment.tintColor = [UIColor redColor];
//    
//    [self.window addSubview:segment];
    
    
    //UIBarButtonItem *barButton = [[[UIBarButtonItem alloc] initWithCustomView:segment] autorelease];
    
    UIDatePicker *datePicker = [[[UIDatePicker alloc] init] autorelease];
    [self.window addSubview:datePicker];
    
    
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
