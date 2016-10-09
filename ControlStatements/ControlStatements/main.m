//
//  main.m
//  ControlStatements
//
//  Created by Varun on 07/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
    
        int a = 0;
        
        a = arc4random() % 100;
        
        // if... else...  else if... Statement
    
        
         if (a < 50) {
            
            NSLog(@"number is less than 50");
            
            if (a < 25) {
                NSLog(@" and number is less than 25");
            }
            else if (a == 25) {
                NSLog(@" and number is equal to 25");
            }
            else {
                NSLog(@" and number is greater than 25");
            }
        }
        else if (a == 50)
        {
            NSLog(@"number is equal to 50");
        }
        else {
            NSLog(@"number is greater than 50");
        }
        
        
        
        // do while... loop
        
        do {
            
            NSLog(@"a: %d",a);
            a--;
            
        }while (a > 50);
        
        
        // while... loop
        
        while (a > 50) {
            NSLog(@"a: %d",a);
            a--;
        }
        
    
        
        
        // for... loop
        
        for (int i = a; i > 50; i--) {
            NSLog(@"a: %d",i);
        }
    
     
        
        // for in... loop
        
        
        NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"Pune",@"Nanded",@"Sangli",@"Satara",@"Mumbai", nil];
        
        for (NSString *str in arr) {
            NSLog(@"City: %@",str);
        }
        
    }
    return 0;
}
