//
//  main.m
//  Trafic
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bike.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *cr = [[Car alloc] init];
        Bike *bk = [[Bike alloc] init];
        
        [cr move];
        [cr race];
        [cr shiftGear];
        [cr reverse];
        
        [bk move];
        [bk race];
        [bk shiftGear];
        [bk kickStart];
        
        
        
    }
    return 0;
}
