//
//  WebViewController.h
//  TextAndWeb
//
//  Created by Justin on 12-12-22.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController<UIWebViewDelegate>
{
    @private
    UIWebView *webView_;
    UIBarButtonItem *reloadButton_;
    UIBarButtonItem *stopButton_;
    UIBarButtonItem *backButton_;
    UIBarButtonItem *forwardButton_;
    
}



@end
