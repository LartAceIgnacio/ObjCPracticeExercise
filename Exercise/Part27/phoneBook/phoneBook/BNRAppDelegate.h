//
//  BNRAppDelegate.h
//  phoneBook
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate> {
    UIButton *insertButton;
    UITextField *nameField;
    UITextField *CopyField;
}

@property (strong, nonatomic) UIWindow *window;

-(void) Swap:(id)sender;

@end
