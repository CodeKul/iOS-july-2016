//
//  ViewController.m
//  PushNotificationDemo
//
//  Created by Varun on 05/10/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()
{
    IBOutlet UILabel *lblDeviceToken;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    AppDelegate *appDel = [[UIApplication sharedApplication] delegate];
    
    appDel.myVC = self;
}

-(void) setLableText:(NSString *) str {
    lblDeviceToken.text = str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
