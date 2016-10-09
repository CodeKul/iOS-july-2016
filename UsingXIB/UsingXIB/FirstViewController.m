//
//  FirstViewController.m
//  UsingXIB
//
//  Created by Varun on 13/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *rightItem = [[UIBarButtonItem alloc] initWithTitle:@"Done" style:UIBarButtonItemStyleDone target:self action:@selector(doneButtonClicked:)];
    
    self.navigationItem.rightBarButtonItem = rightItem;
    self.navigationItem.title = @"FirstViewController";
}

-(void) doneButtonClicked:(UIBarButtonItem *)barBtn {
    SecondViewController *sVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    [self.navigationController pushViewController:sVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)goButtonClicked:(id)sender {
    
    SecondViewController *sVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    [self.navigationController pushViewController:sVC animated:YES];
}

@end
