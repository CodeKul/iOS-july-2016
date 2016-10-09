//
//  ViewController.m
//  NSUserDefaultsDemo
//
//  Created by Varun on 28/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UITextField *txtName;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)saveBtnClicked:(id)sender {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:@"Do you realy want to save?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"Yes" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        NSUserDefaults *UD = [NSUserDefaults standardUserDefaults];
        [UD setValue:txtName.text forKey:@"username"];
        
        [UD synchronize];
    }];
    
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"No" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
    }];

    [alertController addAction:action];
    [alertController addAction:action1];
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
}

-(IBAction)showButtonClicked:(id)sender {
    NSUserDefaults *UD = [NSUserDefaults standardUserDefaults];
    NSLog(@"%@",[UD valueForKey:@"username"]);
    
    if ([UD valueForKey:@"username"]) {
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Alert" message:[UD valueForKey:@"username"] preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"Okay" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            
        }];
        
        [alertController addAction:action];
        [self presentViewController:alertController animated:YES completion:^{
            
        }];
    }

}

@end
