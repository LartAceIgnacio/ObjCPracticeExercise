//
//  Blender.h
//  Constants
//
//  Created by Ace Ignacio on 1/21/14.
//  Copyright (c) 2014 Ace Ignacio. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    BlenderSpeedStir = 1,
    BlenderSpeedChop = 2,
    BlenderSpeedLiquify = 3
}BlenderSpeed;

@interface Blender : NSObject {
    BlenderSpeed speed;
}

@property BlenderSpeed speed;

@end
