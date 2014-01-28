//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource> {
    NSMutableArray *toDoList;
    IBOutlet NSTableView *itemTableView;
}

-(IBAction)createNewItem:(id)sender;

@end
