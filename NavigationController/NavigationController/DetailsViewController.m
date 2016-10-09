//
//  DetailsViewController.m
//  NavigationController
//
//  Created by Varun on 11/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()

@end

@implementation DetailsViewController

@synthesize lblAddress,lblAge,lblName,name,age,address;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    lblName.text = name;
    lblAddress.text= address;
    lblAge.text= age;
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)doneButtonClicked:(UIButton *)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
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
