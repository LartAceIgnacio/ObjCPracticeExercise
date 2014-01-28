//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

//constructors
@synthesize conversionRate;

//inheritmetods
-(float) costInDollars {
    return [super costInDollars] * conversionRate;
}

-(float) valueInDollars {
    return [super valueInDollars] * conversionRate;
}
@end
