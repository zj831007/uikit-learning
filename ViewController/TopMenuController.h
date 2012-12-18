//
//  TopMenuController.h
//  ViewController
//
//  Created by Justin on 12-12-18.
//  Copyright (c) 2012年 jian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TopMenuController : UITableViewController
{
    @private
    NSMutableArray *items_;
}
@property (nonatomic, retain) NSMutableArray *items;

@end
