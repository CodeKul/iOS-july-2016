//
//  SecondViewController.m
//  UsingXIB
//
//  Created by Varun on 13/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"NEXT" style:UIBarButtonItemStyleDone target:self action:@selector(nextButtonClicked:)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
}

-(void) nextButtonClicked:(UIBarButtonItem *)btn {
    
    ThirdViewController *tVC = [[ThirdViewController alloc] initWithNibName:@"ThirdViewController" bundle:nil];
    [self.navigationController pushViewController:tVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goBackClicked:(id)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
