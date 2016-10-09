//
//  TestViewControllerProtocol.h
//  popOverControllerDemo
//
//  Created by Varun on 02/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestViewControllerDelegate

@required
-(void)userDataChangedWithUsername:(NSString *)username andAgeRange:(NSString *)ageRange andGender:(NSString *)gender;

@end