//
//  ViewController.h
//  StudentApp
//
//  Created by Varun on 12/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtRollNo;
    IBOutlet UITextField *txtMarks;
}

@end

