//
//  BNRAppDelegate.m
//  iTahDoodle
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "BNRAppDelegate.h"

NSString *docPath() {
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
    //NSString *path = @"/tmp/TaskToDo.plist";
    //return path;
}

@implementation BNRAppDelegate

#pragma mark - Application degate callbacks


-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //because this table view has only one section
    //the number of rows in its equal number
    //of items in our task array
    return [tasks count];
}

-(UITableViewCell *) tableView:(UITableView *)tableView
     cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //To improve performance, we reconfigure cells in memory
    //that have scrolled off the screen and hand them back
    //with new contents isntead of always creating new cells
    //First, we check to see if there's a cell available for reuse
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    if(!c) {
        //.. and only allocate a new cell if none are available
        c = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                  reuseIdentifier:@"Cell"];
    }
    
    //Then we reconfigure the cell based on the model object,
    //in this case ur todoItems array
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    return c;
}

-(void) addTask:(id)sender {
    //get the to-do item
    NSString *t = [taskField text];
    
    //check if the taskField is empty
    if([t isEqualToString:@""]) {
        return;
    }
    
    //add it to your working array
    [tasks addObject:t];
    //Refresh the table
    [taskTable reloadData];
    //clear field
    [taskField setText:@""];
    //Dismiss the keyboard
    [taskField resignFirstResponder];
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *listOfTask = [NSArray arrayWithContentsOfFile:docPath()];
    if(listOfTask) {
        tasks = [listOfTask mutableCopy];
    } else {
        tasks = [[NSMutableArray alloc]init];
    }
    
    /*
    //is task empty?
    if([tasks count] == 0) {
        //put some string
        [tasks addObject:@"Walk the dogs."];
        [tasks addObject:@"Feed the dogs"];
        [tasks addObject:@"Bath the dogs"];
    }
     */
    
    //create and configure the UI windows instance
    //A CGRect is a struct  with an origin (x,y) and size (width,height)
    CGRect windowFrame = [[UIScreen mainScreen]bounds];
    UIWindow *theWindow = [[UIWindow alloc]initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    //Define the frame rectangles of the three UI elemetns
    CGRect tableFrame = CGRectMake(0,80,320,360);
    CGRect fieldFrame = CGRectMake(20,40,200,31);
    CGRect buttonFrame = CGRectMake(228,40,72,31);
    
    //Create and configure the table view
    taskTable = [[UITableView alloc]initWithFrame:tableFrame
                                            style:UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    //Make this object the table views source
    [taskTable setDataSource:self];
    
    //Create and cofigure the text fields
    taskField = [[UITextField alloc]initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Type a task, tap Insert"];
    
    //Create and configure a round rectangle Insert button
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    
    //Buttons behave using a target/action callback
    //Configure the Insert button's action to call this object -addTask : method
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];
    
    //Give the button a title;
    [insertButton setTitle:@"Insert"
                  forState:UIControlStateNormal];
    
    //Add our three UI elements to the window
    [[self window]addSubview:taskTable];
    [[self window]addSubview:taskField];
    [[self window]addSubview:insertButton];
    
    //Finalize the window and put it on the screen
    [[self window]setBackgroundColor:[UIColor whiteColor]];
    [[self window]makeKeyAndVisible];
    
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
    
    //This method is only called on iOS4.0+
    //Save our task array disk
    
    [tasks writeToFile:docPath()
            atomically:YES];
    
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
    
    [tasks writeToFile:docPath()
            atomically:YES];
}

@end
