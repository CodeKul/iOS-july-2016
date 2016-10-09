//
//  Vehicle.m
//  Trafic
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "Vehicle.h"

@implementation Vehicle

@synthesize type;

- (instancetype) initWithType:(NSString *)t
{
    self = [super init];
    if (self) {
        type = t;
    }
    return self;
}

-(void) move{
    NSLog(@"%@ is started to move",type);
}

-(void) shiftGear{
    NSLog(@"%@ is shifting gear",type);
}

-(void) race{
    NSLog(@"%@ is started to race",type);
}

@end
