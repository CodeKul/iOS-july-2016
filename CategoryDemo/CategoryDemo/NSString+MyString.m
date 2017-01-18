//
//  NSString+MyString.m
//  CategoryDemo
//
//  Created by Varun on 04/12/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "NSString+MyString.h"

@implementation NSString (MyString)

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.marks = 100.8;
    }
    return self;
}

-(void)setMarks:(double)marks {
    self.marks = marks;
}

-(double)marks {
    return self.marks;
}

@end
