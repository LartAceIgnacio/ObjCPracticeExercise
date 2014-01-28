//
//  BNRDocument.h
//  TahDoodle1
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource> {
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
-(IBAction)createNetItem:(id)sender;

@end
