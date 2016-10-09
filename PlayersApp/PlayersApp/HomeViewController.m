//
//  HomeViewController.m
//  PlayersApp
//
//  Created by Varun on 11/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

@synthesize loginState;

- (void)viewDidLoad {
    [super viewDidLoad];

    NSLog(@"LoginState: %@",loginState);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    
    
    
}


@end
