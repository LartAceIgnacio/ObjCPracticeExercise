//
//  BNRAppDelegate.m
//  phoneBook
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "BNRAppDelegate.h"

@implementation BNRAppDelegate


-(void) Swap:(id)sender {
    NSString *str = nameField.text;
    nameField.text = CopyField.text;
    CopyField.text = str;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Create and configure the UIwindow instance
    CGRect windowFrame = [[UIScreen mainScreen]bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    //Button
    CGRect buttonFrame = CGRectMake(250,40,72,31);
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    [insertButton setTitle:@"Swap"
                  forState:UIControlStateNormal];
    
    [insertButton addTarget:self
                     action:@selector(Swap:)
           forControlEvents:UIControlEventTouchUpInside];
    
    [[self window] addSubview:insertButton];
    //Insert button
    
    //Textfield
    CGRect textFrame = CGRectMake(20, 40,200 , 30);
    nameField = [[UITextField alloc]initWithFrame:textFrame];
    [nameField setBorderStyle:UITextBorderStyleRoundedRect];
    [nameField setPlaceholder:@"Insert here"];
    [[self window] addSubview:nameField];
    //Textfield
    
    //
    CGRect copytextframe = CGRectMake(20, 80, 200, 30);
    CopyField = [[UITextField alloc]initWithFrame:copytextframe];
    [CopyField setBorderStyle:UITextBorderStyleRoundedRect];
    [[self window] addSubview:CopyField];
    
    //
    
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    [[self window] makeKeyAndVisible];
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
