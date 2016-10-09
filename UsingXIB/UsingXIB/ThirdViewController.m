//
//  ThirdViewController.m
//  UsingXIB
//
//  Created by Varun on 13/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ThirdViewController.h"
#import "FourthViewController.h"
@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.title = @"ThirdViewController";
    UIBarButtonItem *rightBtn = [[UIBarButtonItem alloc] initWithTitle:@"NEXT" style:UIBarButtonItemStyleDone target:self action:@selector(nextButtonClicked:)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
}

-(void) nextButtonClicked:(UIBarButtonItem *)btn {
    
    FourthViewController *fVC = [[FourthViewController alloc] initWithNibName:@"FourthViewController" bundle:nil];
    [self.navigationController pushViewController:fVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction) gotoFirstVC:(id)sender {
    
    [self.navigationController popToRootViewControllerAnimated:YES];
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
