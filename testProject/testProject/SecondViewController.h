//
//  SecondViewController.h
//  testProject
//
//  Created by Varun on 30/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StudentModelClass.h"
@interface SecondViewController : UIViewController

@property (nonatomic, strong) NSString *strTitle;
@property(nonatomic,strong) StudentModelClass *student;
@property (nonatomic, strong) IBOutlet UILabel *lblTitle;
@end
