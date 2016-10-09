//
//  ViewController.m
//  LocationManagerApp
//
//  Created by Varun on 26/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    CLLocationManager *locationMananger;

}
@end

@implementation ViewController
@synthesize lblLat, lblLong;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    locationMananger = [[CLLocationManager alloc] init];
    locationMananger.delegate =self;
    [locationMananger requestWhenInUseAuthorization];
    [locationMananger setDesiredAccuracy:kCLLocationAccuracyBest];
    [locationMananger startUpdatingLocation];
    
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    CLLocation * location = locations[0];
    NSString *latt = [NSString stringWithFormat:@"%f",location.coordinate.latitude];
    
    NSString *longt = [NSString stringWithFormat:@"%f",location.coordinate.longitude];
    
    lblLat.text =  latt;
    lblLong.text = longt;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
