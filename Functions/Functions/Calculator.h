//
//  Calculator.h
//  Functions
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (retain, nonatomic) NSString *opr;
@property (nonatomic) int operand1;
@property (nonatomic) int operand2;

-(void) additionOfA:(int) a B:(int) b;
-(void) substractionOfA:(int) a B:(int) b;
-(void) multiplicationOfA:(int) a B:(int) b;
-(void) divisionOfA:(int) a B:(int) b;
-(void) ShowResult:(int) res;

+(void) description;

-(void) calculate;

@end
