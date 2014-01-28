//
//  Asset.m
//  NSPredicate
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label,valueoOfAsset;

-(NSString *) description {
    return [NSString stringWithFormat:@"%@, value: %.2f",[self label],[self valueoOfAsset]];
}

@end
