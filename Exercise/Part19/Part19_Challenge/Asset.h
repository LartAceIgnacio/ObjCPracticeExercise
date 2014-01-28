//
//  Asset.h
//  Part19_Challenge
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject {
    unsigned int resaleValue;
    NSString *label;
}

@property unsigned int resaleValue;
@property NSString *label;

-(void)printDetails;

@end
