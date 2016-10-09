//
//  Vehicle.h
//  Trafic
//
//  Created by Varun on 08/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Vehicle : NSObject
{
    NSString *type;
}

-(void) move;
-(void) shiftGear;
-(void) race;
- (instancetype) initWithType:(NSString *)t;

@end
