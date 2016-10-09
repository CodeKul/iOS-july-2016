//
//  Car.m
//  Trafic
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "Car.h"

@implementation Car

- (instancetype) init
{
    self = [super init];
    if (self) {
        self = [self initWithType:@"Car"];
    }
    return self;
}

-(void) reverse{
    NSLog(@"Car is started to move in reverse");
}

@end
