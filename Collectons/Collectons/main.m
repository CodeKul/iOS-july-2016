//
//  main.m
//  Collectons
//
//  Created by Varun on 05/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *str = [[NSString alloc] initWithFormat:@"Welcome to %@",@"CodeKul.com"];
        
        NSLog(@"%@",str);
        
        NSArray *arr = [[NSArray alloc] init];
        
        arr = @[@"Suraj", @"Vidya", @"Varun"];
        
        NSString *name = [arr objectAtIndex:1];
        name = arr[0];
        
        NSLog(@"Name1: %@\n Name2: %@",name,[arr objectAtIndex:1]);
        
        NSDictionary *myDictionary = [[NSDictionary alloc] initWithObjects:arr forKeys:@[@"Student1", @"Student2", @"Teacher"]];
        
        name = [myDictionary valueForKey:@"Student2"];
        
        NSLog(@"myDictionary: %@",myDictionary);
        
        
        NSMutableArray *mutableArr = [[NSMutableArray alloc] init];
        
        [mutableArr addObject:@"Pune"];

        [mutableArr addObject:@"Nanded"];
        
        [mutableArr insertObject:@"Sangli" atIndex:0];
        
        NSLog(@"Mutable Array: %@",mutableArr);
        

        NSMutableDictionary *mutableDict = [[NSMutableDictionary alloc] init];
        
        [mutableDict setValue:@"Pune" forKey:@"City"];
        
        [mutableDict setValue:@"Paud Road" forKey:@"Road"];
        
        [mutableDict setValue:@"411029" forKey:@"PIN"];
        
        [mutableDict removeObjectForKey:@"PIN"];

        [mutableDict setValue:@"Karve Road" forKey:@"Road"];

        NSLog(@"Mutable Dictionary: %@",mutableDict);
        
        NSLog(@"Object: %@",mutableDict[@"PIN"]);
        
        NSNumber *number = [[NSNumber alloc] initWithInt:10];
        
        number = [NSNumber numberWithDouble:152.36];
        
        NSLog(@"Number: %@",number);
        
        NSInteger intObj = 158;
        
        number = [NSNumber numberWithInteger:intObj];
        
        NSLog(@"number with integer: %@",number);
        
        NSLog(@"Integer: %zd",intObj);
        
    }
    return 0;
}
