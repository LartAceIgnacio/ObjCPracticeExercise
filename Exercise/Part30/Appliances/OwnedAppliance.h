//
//  OwnedAppliance.h
//  Appliances
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Appliance.h"

@interface OwnedAppliance : Appliance {
    NSMutableSet *ownersNames;
}

@property NSMutableSet *ownersName;

//The designated initializer
-(id)initWithProductName:(NSString *)pn
          firstOwnerName:(NSString *)n;
-(void)addOwnersNameObject:(NSString *)n;
-(void)removeOwnersNameObject:(NSString *)n;


@end
