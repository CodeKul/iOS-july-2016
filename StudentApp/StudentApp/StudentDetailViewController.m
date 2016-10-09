//
//  StudentDetailViewController.m
//  StudentApp
//
//  Created by Varun on 12/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "StudentDetailViewController.h"

@interface StudentDetailViewController ()

@end

@implementation StudentDetailViewController
@synthesize strMarks,strName,strRollNo;

- (void)viewDidLoad {
    [super viewDidLoad];

    lblRollNo.text = strRollNo;
    lblName.text = strName;
    lblMarks.text = strMarks;
    
}

-(IBAction)doneButtonClicked:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
