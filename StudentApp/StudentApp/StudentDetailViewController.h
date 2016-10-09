//
//  StudentDetailViewController.h
//  StudentApp
//
//  Created by Varun on 12/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StudentDetailViewController : UIViewController
{
    IBOutlet UILabel *lblName;
    IBOutlet UILabel *lblRollNo;
    IBOutlet UILabel *lblMarks;
}

@property (nonatomic, strong) NSString *strName;
@property (nonatomic, strong) NSString *strRollNo;
@property (nonatomic, strong) NSString *strMarks;

@end
