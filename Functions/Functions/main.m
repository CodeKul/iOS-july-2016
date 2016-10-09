//
//  main.m
//  Functions
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdvanceCalc.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a=55, b=11;
        
         AdvanceCalc *aCalc = [[AdvanceCalc alloc] init];
        
        [Calculator description];
        
//        [aCalc additionOfA:a B:b];
//        
//        [aCalc substractionOfA:a B:b];
//        
//        [aCalc multiplicationOfA:a B:b];
//        
//        [aCalc divisionOfA:a B:b];
//        
//        [aCalc squareOfA:a];
        
        aCalc.operand1 = a;
        aCalc.operand2 = b;
        
        aCalc.opr = @"+";
        
        [aCalc calculate];
        
        aCalc.opr = @"*";
        
        [aCalc calculate];
        
        
        
    }
    return 0;
}