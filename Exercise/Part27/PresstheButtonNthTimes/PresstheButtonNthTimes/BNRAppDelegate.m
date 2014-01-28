//
//  BNRAppDelegate.m
//  PresstheButtonNthTimes
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "BNRAppDelegate.h"

@implementation BNRAppDelegate

-(void) clickChecker:(id)sender {
    if(numOfClick > RandValue) {
        UIAlertView *message = [[UIAlertView alloc]initWithTitle:@"Game over!" message:@"Game Over!" delegate:nil cancelButtonTitle:@"Im a loser!" otherButtonTitles: nil];
        [message show] ;
        
    }
    else
        numOfClick++;
        return;
}



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    numOfClick = 0;
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    //
    CGRect buttonFrame = CGRectMake(110, 400, 100, 30);
    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setFrame:buttonFrame];
    [button setTitle:@"Click me!" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(clickChecker:)
     forControlEvents:UIControlEventTouchUpInside];
    [[self window] addSubview:button];
    //
    
    CGRect labelFrame = CGRectMake(50, 200, 200, 100);
    label = [[UILabel alloc]initWithFrame:labelFrame];
    label.textColor = [UIColor redColor];
    label.textAlignment = UITextAlignmentCenter;
    RandValue = arc4random()%20;
    label.text = [NSString stringWithFormat:@"Click %ld times.",RandValue];
    [[self window]addSubview:label];
    
    self.window.backgroundColor = [UIColor whiteColor];
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
