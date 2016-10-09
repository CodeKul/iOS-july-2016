//
//  MyAnnotation.m
//  MapViewDemo
//
//  Created by Varun on 26/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "MyAnnotation.h"

@implementation MyAnnotation

@synthesize coordinate;

-(instancetype)initWithCoordinate:(CLLocationCoordinate2D)coord {
    self.coordinate = coord;
    return self;
}

@end
