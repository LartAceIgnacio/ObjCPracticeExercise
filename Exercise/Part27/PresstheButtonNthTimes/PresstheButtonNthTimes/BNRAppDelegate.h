//
//  BNRAppDelegate.h
//  PresstheButtonNthTimes
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate> {
    UIButton *button;
    UILabel *label;
    int numOfClick;
    int RandValue;
}

-(void)clickChecker:(id)sender;


@property (strong, nonatomic) UIWindow *window;

@end
