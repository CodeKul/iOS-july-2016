//
//  Bike.m
//  Trafic
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "Bike.h"

@implementation Bike

- (instancetype) init
{
    self = [super init];
    if (self) {
        self = [self initWithType:@"Bike"];
    }
    return self;
}

-(void) kickStart{
    NSLog(@"Bike is started with a kick");
}

@end
