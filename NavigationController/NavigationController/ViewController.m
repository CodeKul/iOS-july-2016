//
//  ViewController.m
//  NavigationController
//
//  Created by Varun on 11/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtAddress, txtAge, txtName;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailsViewController *detailVC = [segue destinationViewController];

    detailVC.name = txtName.text;
    detailVC.address = txtAddress.text;
    detailVC.age = txtAge.text;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
