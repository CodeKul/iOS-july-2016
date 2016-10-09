//
//  ViewController.m
//  StudentApp
//
//  Created by Varun on 12/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
#import "StudentListViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrStudentData;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    arrStudentData = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)saveButtonClicked:(UIButton *)sender {
    Student *s = [[Student alloc] init];
    s.name = txtName.text;
    s.rollNo = txtRollNo.text;
    s.marks = txtMarks.text;
    
    [arrStudentData addObject:s];
    
    txtRollNo.text = @"";
    txtName.text = @"";
    txtMarks.text = @"";
    
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.identifier isEqualToString:@"show"]) {
        StudentListViewController *StdVC = [segue destinationViewController];
        
        StdVC.arrStudentData = arrStudentData;
        
//        NSUserDefaults *UD = [NSUserDefaults standardUserDefaults];
//        
//        [UD setObject:@[@"12"] forKey:@"student"];
//        [UD synchronize];
        
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == txtRollNo) {
        [txtName becomeFirstResponder];
    }
    else if (textField == txtName) {
        [txtMarks becomeFirstResponder];
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}

@end
