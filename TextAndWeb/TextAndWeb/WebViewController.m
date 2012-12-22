//
//  WebViewController.m
//  TextAndWeb
//
//  Created by Justin on 12-12-22.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

- (void)dealloc
{
    if (webView_.loading) {
        [webView_ stopLoading];
        
    }
    [webView_ release];
    [reloadButton_ release];
    [stopButton_ release];
    [backButton_ release];
    [forwardButton_ release];
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
    
    self.title = @"Ui webview";
    webView_ = [[UIWebView alloc] init];
    webView_.delegate = self;
    webView_.frame = self.view.bounds;
    webView_.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    [self.view addSubview:webView_];
    
    
    reloadButton_ = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(reloadDidPush)];
    stopButton_ = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(stopDidPush)];
    backButton_ = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:self action:@selector(backDidPush)];
    forwardButton_ = [[UIBarButtonItem alloc] initWithTitle:@"Forward" style:UIBarButtonItemStyleBordered target:self action:@selector(forwardDidPush)];
    
    NSArray *buttons = [NSArray arrayWithObjects:backButton_, forwardButton_, reloadButton_, stopButton_    ,nil];
    [self setToolbarItems:buttons animated:YES];
    
    
    
}

- (void)reloadDidPush
{
    [webView_ reload];
}

- (void)stopDidPush
{
    if (webView_.loading) {
        [webView_ stopLoading];
    }
}

- (void)backDidPush
{
    if (webView_.canGoBack) {
        [webView_ goBack];
    }
}

- (void)forwardDidPush
{
    if (webView_.canGoForward) {
        [webView_ goForward];
    }
}

- (void)updateControlEnabled
{
    [UIApplication sharedApplication].networkActivityIndicatorVisible = webView_.loading;
    stopButton_.enabled = webView_.loading;
    backButton_.enabled = webView_.canGoForward;
    forwardButton_.enabled = webView_.canGoForward;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http:www.baidu.com"]];
    [webView_ loadRequest:request];
    [self updateControlEnabled];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [UIApplication sharedApplication].networkActivityIndicatorVisible = NO;
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [self updateControlEnabled];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [self updateControlEnabled];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error
{
    [self updateControlEnabled];
}

@end
