//
//  Asset.h
//  BMI
//
//  Created by Ace Ignacio on 1/20/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject {
    unsigned int resaleValue;
    NSString *label;
    __weak Employee *holder;
}

@property unsigned int resaleValue;
@property (strong) NSString *label;
@property (weak) Employee *holder;


@end
