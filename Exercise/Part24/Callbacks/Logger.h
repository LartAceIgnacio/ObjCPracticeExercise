//
//  Logger.h
//  Callbacks
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}

@property NSMutableData *incomingData;

-(void)sayOuch:(NSTimer *)t;

@end
