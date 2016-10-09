//
//  NSString+Date.m
//  CategoryDemo
//
//  Created by Varun on 14/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "NSString+Date.h"

@implementation NSString (Date)

+(NSString *) getCurrentDate {
    
    NSDate *d = [NSDate date];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM/dd/yyyy HH:mm"];
    
    return [formatter stringFromDate:d];
}

@end
