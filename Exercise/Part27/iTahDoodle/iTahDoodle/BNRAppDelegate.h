//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

//path of the xmlfile
NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton    *insertButton;
    
    NSMutableArray *tasks;
}

-(void) addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
