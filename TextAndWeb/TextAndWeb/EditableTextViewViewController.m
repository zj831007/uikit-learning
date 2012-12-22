//
//  EditableTextViewViewController.m
//  TextAndWeb
//
//  Created by Justin on 12-12-22.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "EditableTextViewViewController.h"

@interface EditableTextViewViewController ()

@end

@implementation EditableTextViewViewController

- (void) dealloc
{
    [textView_ release];
    [super dealloc];
}

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
    
    textView_ = [[UITextView alloc] init];
    textView_.frame = self.view.bounds;
    textView_.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    textView_.delegate = self;
    textView_.text = @"can editable";
    [self.view addSubview:textView_];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:YES];
    [self.navigationController setToolbarHidden:NO animated:YES];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self textViewDidEndEditing:textView_];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [textView_ resignFirstResponder];
}

- (void)textViewDidBeginEditing:(UITextView *)textView
{
    static const CGFloat kKeyboardHeight = 216.0;
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonItemStyleDone target:self action:@selector(doneDidPush)] autorelease];
    [UIView beginAnimations:nil context:nil];
    CGRect textViewFrame = textView_.frame;
    textViewFrame.size.height = self.view.bounds.size.height - kKeyboardHeight;
    textView_.frame = textViewFrame;
    CGRect toolbarFrame = self.navigationController.toolbar.frame;
    toolbarFrame.origin.y = self.view.window.bounds.size.height - toolbarFrame.size.height - kKeyboardHeight;
    self.navigationController.toolbar.frame = toolbarFrame;
    [UIView commitAnimations];
    
    
}

- (void)textViewDidEndEditing:(UITextView *)textView
{
    self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(editDidPush)] autorelease];
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.3];
    textView_.frame = self.view.bounds;
    CGRect toolbarFrame = self.navigationController.toolbar.frame;
    toolbarFrame.origin.y = self.view.window.bounds.size.height - toolbarFrame.size.height;
    self.navigationController.toolbar.frame = toolbarFrame;
    [UIView commitAnimations];
    
}

- (void)editDidPush
{
    [textView_ becomeFirstResponder];
}

- (void)doneDidPush
{
    [textView_ resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
