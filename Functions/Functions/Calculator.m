//
//  Calculator.m
//  Functions
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

@synthesize operand1,operand2,opr;

+(void) description {
    
    NSLog(@"This is Calculator class");
}

-(void)setOperand1:(int)opr1 {
    operand1 = opr1;
    NSLog(@"setOperand1");
}

-(void)setOperand2:(int)opr2 {
    operand2 = opr2;
    NSLog(@"setOperand2");
}

-(void)setOpr:(NSString *)op {
    opr = op;
    NSLog(@"setOpr");
}

-(void) calculate {
    
    if ([opr isEqualToString:@"+"]) {
        [self additionOfA:operand1 B:operand2];
    }
    else if ([opr isEqualToString:@"-"]) {
        [self substractionOfA:operand1 B:operand2];
    }
    else if ([opr isEqualToString:@"*"]) {
        [self multiplicationOfA:operand1 B:operand2];
    }
    else if ([opr isEqualToString:@"/"]) {
        [self divisionOfA:operand1 B:operand2];
    }
}

-(void) additionOfA:(int) a B:(int) b {
    [self ShowResult:a+b];
}

-(void) substractionOfA:(int)a B:(int)b{
    [self ShowResult:a-b];
}

-(void) multiplicationOfA:(int) a B:(int) b {
    [self ShowResult:a*b];
}


-(void) divisionOfA:(int)a B:(int)b{
    [self ShowResult:a/b];
}

-(void) ShowResult:(int) res {
    NSLog(@"Result: %d",res);
}

@end
