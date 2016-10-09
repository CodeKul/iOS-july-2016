//
//  FourthViewController.m
//  UsingXIB
//
//  Created by Varun on 13/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "FourthViewController.h"
#import "SecondViewController.h"

@interface FourthViewController ()

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"FourthVC";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)gotoSecondVC:(id)sender {
    
    NSArray *arrVC = self.navigationController.viewControllers;
    
    SecondViewController *sVC = [arrVC objectAtIndex:1];
    
    [self.navigationController popToViewController:sVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
