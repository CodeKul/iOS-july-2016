//
//  ViewController.m
//  mapview1
//
//  Created by Varun on 31/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<MKMapViewDelegate>
{
    IBOutlet MKMapView *mapview;
    CLLocationManager *myLocationManager;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    myLocationManager =[[CLLocationManager alloc] init];
    myLocationManager.delegate= self;
    [myLocationManager requestWhenInUseAuthorization];
    [myLocationManager startUpdatingLocation];
    
    // Do any additional setup after loading the view, typically from a nib.
}
/*- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    NSLog(@"didUpdateLocations");
    
}*/


- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated
{
    NSLog(@"regionDidChangeAnimated");
}
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated
{
   NSLog(@"regionWillChangeAnimated");
}
- (void)mapViewWillStartLoadingMap:(MKMapView *)mapView
{
  NSLog(@"mapViewWillStartLoadingMap");
}
- (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView
{
   NSLog(@"mapViewDidFinishLoadingMap");
}
- (void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error
{
   NSLog(@"mapViewDidFailLoadingMap");
}
- (void)mapViewWillStartRenderingMap:(MKMapView *)mapView
{
   NSLog(@"mapViewWillStartRenderingMap");
}
- (void)mapViewDidFinishRenderingMap:(MKMapView *)mapView fullyRendered:(BOOL)fullyRendered
{
   NSLog(@"mapViewDidFinishRenderingMap");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

@end
