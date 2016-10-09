//
//  LoginViewController.m
//  LoginTest
//
//  Created by Varun on 31/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "LoginViewController.h"

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

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    if(textField == _txtUsername)
      {
          [ _txtPassword becomeFirstResponder];
      }
    else
      {
       [textField resignFirstResponder];
      }
    
    
    return YES;
}


- (IBAction)loginClicked:(id)sender {
    
    if ([ _txtUsername.text isEqualToString:@"codekul"]) {
        
        if ([ _txtPassword.text isEqualToString:@"ios"]) {
            NSLog(@"login successful");
            
        } else {
            NSLog(@"invalid password");
        }
        
        
        
    } else {
        NSLog(@"invalid username");
    }
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
