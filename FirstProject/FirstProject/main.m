//
//  main.m
//  FirstProject
//
//  Created by Varun on 01/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int roll_number = 12;
        
        double marks = 45.56;
        
        NSString *name = [[NSString alloc] init];
        
        name = @"suraj chabukswar";
        
        NSLog(@"\n\nroll no : %d\nname : %@\nmarks :%f%%    ",roll_number,name,marks);
    }
    return 0;
}
