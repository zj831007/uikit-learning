//
//  ViewControllerAppDelegate.m
//  ViewController
//
//  Created by Justin on 12-12-17.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "MultiViewAppDelegate.h"
#import "TopMenuController.h"

@implementation MultiViewAppDelegate
@synthesize rootController = rootController_;


- (void)dealloc
{
    [_window release];
    [rootController_ release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
//    rootController_ = [[UITabBarController alloc] init];
//    
//    
//    ViewController1 *tab1 = [[ViewController1 alloc] init];
//    ViewController2 *tab2 = [[ViewController2 alloc] init];
//    
//    NSArray *tabs = [NSArray arrayWithObjects:tab1, tab2, nil];
//    
//    [(UITabBarController *)rootController_ setViewControllers:tabs];
    
    TopMenuController *topMenu = [[[TopMenuController alloc] init] autorelease];
    rootController_ = [[UINavigationController alloc] initWithRootViewController:topMenu];
    
    
    [self.window addSubview:rootController_.view];
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
