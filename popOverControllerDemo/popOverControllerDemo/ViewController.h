//
//  ViewController.h
//  popOverControllerDemo
//
//  Created by Varun on 02/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>


#import "TestViewController.h"

@interface ViewController : UIViewController<UIActionSheetDelegate, TestViewControllerDelegate>



- (IBAction)showUserDataEntryForm:(id)sender;

@end

