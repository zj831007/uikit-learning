//
//  EditableTextViewViewController.h
//  TextAndWeb
//
//  Created by Justin on 12-12-22.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EditableTextViewViewController : UIViewController<UITextViewDelegate>
{
    @private
    UITextView *textView_;
}

@end
