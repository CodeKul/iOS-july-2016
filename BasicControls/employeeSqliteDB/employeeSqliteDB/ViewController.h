//
//  ViewController.h
//  employeeSqliteDB
//
//  Created by Varun on 17/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtEmployeeId;
@property (weak, nonatomic) IBOutlet UITextField *txtEmployeeName;
@property (weak, nonatomic) IBOutlet UITextField *txtEmployeeDesignation;
@property (weak, nonatomic) IBOutlet UITextField *txtEmployeeSalary;

- (IBAction)saveRecordOfEmployee:(id)sender;
- (IBAction)updateRecordOfEmployee:(id)sender;
- (IBAction)deleteRecordOfEmployee:(id)sender;
- (IBAction)showRecordsOfEmployee:(id)sender;
- (IBAction)findRecordOfEmployee:(id)sender;

@end

