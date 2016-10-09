//
//  ViewController.m
//  SQLiteDemo
//
//  Created by Varun on 15/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "MyDBManager.h"

@interface ViewController ()
{
    IBOutlet UITextField *txtRno;
    IBOutlet UITextField *txtName;
    IBOutlet UITextField *txtMarks;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)findRecord:(id)sender {
    
    NSArray *arrData = [[MyDBManager getSharedInstance] findByRollNumber:txtRno.text];
    
    NSLog(@"Records: %@",arrData);
    
}

-(IBAction)saveData:(id)sender {
    
    BOOL isSuccess = [[MyDBManager getSharedInstance] saveData:txtRno.text name:txtName.text marks:txtMarks.text];
    
    if (isSuccess) {
        NSLog(@"Saved Successfully");
    }
}

-(IBAction)updateData:(id)sender {
    BOOL isSuccess = [[MyDBManager getSharedInstance] updateDataWithRollNumber:txtRno.text name:txtName.text marks:txtMarks.text];
    
    if (isSuccess) {
        NSLog(@"Saved Successfully");
    }
}

-(IBAction)deleteData:(id)sender {
    
    BOOL isSuccess = [[MyDBManager getSharedInstance] deleteRecordWithRollNumber:txtRno.text];
    
    if (isSuccess) {
        NSLog(@"Saved Successfully");
    }
}

-(IBAction)showData:(id)sender {
    NSArray *arrData = [[MyDBManager getSharedInstance] getAllRecords];
    
    NSLog(@"All Records: %@",arrData);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
