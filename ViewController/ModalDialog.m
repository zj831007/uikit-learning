//
//  ModalDialog.m
//  ViewController
//
//  Created by Justin on 12-12-18.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "ModalDialog.h"

@interface ModalDialog ()

@end

@implementation ModalDialog

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    UILabel *label = [[[UILabel alloc] initWithFrame:self.view.bounds] autorelease];
    label.backgroundColor = [UIColor blackColor];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"你好，我是欌太对话框";
    [self.view addSubview:label];
    
    
    UIButton *goodbyeButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [goodbyeButton setTitle:@"Goood bye" forState:UIControlStateNormal];
    [goodbyeButton sizeToFit];
    CGPoint newPoint = self.view.center;
    newPoint.y += 80;
    goodbyeButton.center = newPoint;
    
    [goodbyeButton addTarget:self action:@selector(goodbyeDidFush) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:goodbyeButton];
    
}

- (void) goodbyeDidFush
{
    [self dismissViewControllerAnimated:YES
                             completion:^{
                                 
                             }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
