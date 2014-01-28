//
//  Appliance.h
//  Appliances
//
//  Created by Ace Ignacio on 1/22/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Appliance : NSObject
{
    //int voltage;
    //NSString *productName;
}

@property int voltage;
@property (copy)NSString *productName;

//The designated initializer
-(id)initWithProductName:(NSString *)pn;

@end
