//
//  LoginViewController.m
//  PlayersApp
//
//  Created by Varun on 31/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "LoginViewController.h"
#import "HomeViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    if (textField == _txtUsername) {
        [_txtPassword becomeFirstResponder];
    }
    else {
        [textField resignFirstResponder];
    }
    return YES;
}

- (IBAction)loginButtonClicked:(id)sender {
    
    if ([_txtUsername.text isEqualToString:@"codekul"]) {
        
        if ([_txtPassword.text isEqualToString:@"12345"]) {
            
            NSLog(@"Login Successful");
        }
        else {
            NSLog(@"Invalid Password");
        }
    }
    else {
        NSLog(@"Invalid Username");
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    HomeViewController *homeVC = [segue destinationViewController];

    if ([_txtUsername.text isEqualToString:@"codekul"]) {
        
        if ([_txtPassword.text isEqualToString:@"12345"]) {
            
            homeVC.loginState = @"Success";
        }
        else {
            homeVC.loginState = @"Invalid Password";
        }
    }
    else {
        homeVC.loginState = @"Invalid Username";
    }
}

@end
