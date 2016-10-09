//
//  main.m
//  CategoryDemo
//
//  Created by Varun on 14/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Vehicle+AdvanceV.h"
#import "NSString+Date.h"
# import "Bike+Color.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Vehicle *v = [[Vehicle alloc] init];
        
        [v park];
        
        NSString *str = [NSString getCurrentDate];
        
        NSLog(@"Current Date: %@",str);
        
        Bike *b =[[Bike alloc]init];
        
        b.color = @"Blue";
        
        [b paint];
        
        
    }
    return 0;
}
