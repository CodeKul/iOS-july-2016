//
//  main.m
//  FirstDemo
//
//  Created by Varun on 01/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int i = 0;
        float f = 0.0;
        double d = 0.0;
        char c = 'c';
        
        NSString *str = [[NSString alloc] init];
        
        NSNumber *number = [[NSNumber alloc] init];
        
        number = [NSNumber numberWithDouble:5.6];
        
        d = number.doubleValue;
        
        i = number.intValue;
        
        f = number.floatValue;
        
        NSLog(@"\ni: %d\nf: %f\nd: %f",i,f,d);
        
        
        
    }
    return 0;
}
