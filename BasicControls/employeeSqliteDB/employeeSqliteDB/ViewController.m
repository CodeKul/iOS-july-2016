//
//  ViewController.m
//  employeeSqliteDB
//
//  Created by Varun on 17/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "MyDBManager.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize txtEmployeeId, txtEmployeeName, txtEmployeeDesignation,txtEmployeeSalary;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)saveRecordOfEmployee:(id)sender {
    BOOL isSuccess = [[MyDBManager getSharedInstance] saveData:txtEmployeeId.text name:txtEmployeeName.text designation:txtEmployeeDesignation.text salary:txtEmployeeSalary.text];
    
    if (isSuccess) {
        NSLog(@"Saved Successfully");
    }
}

- (IBAction)updateRecordOfEmployee:(id)sender {
    BOOL isSuccess = [[MyDBManager getSharedInstance] updateDataWithEmployeeId:txtEmployeeId.text name:txtEmployeeName.text designation:txtEmployeeDesignation.text salary:txtEmployeeSalary.text];
    
    if (isSuccess) {
        NSLog(@"Saved Successfully");
    }
}

- (IBAction)deleteRecordOfEmployee:(id)sender {
    BOOL isSuccess = [[MyDBManager getSharedInstance] deleteRecordWithEmployeeId:txtEmployeeId.text];
    
    if (isSuccess) {
        NSLog(@"Saved Successfully");
    }
}

- (IBAction)showRecordsOfEmployee:(id)sender {
    NSArray *arrData = [[MyDBManager getSharedInstance] getAllRecords];
    
    NSLog(@"All Records: %@",arrData);
}

- (IBAction)findRecordOfEmployee:(id)sender {
    
    NSArray *arrData = [[MyDBManager getSharedInstance] findByEmployeeId:txtEmployeeId.text];
    
    NSLog(@"Records: %@",arrData);
}
@end
