//
//  ViewController.m
//  MapViewDemo
//
//  Created by Varun on 25/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"

@interface ViewController ()<MKMapViewDelegate>
{
    IBOutlet MKMapView *mapView;
    
    CLLocationManager *myLocationManager;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    myLocationManager = [[CLLocationManager alloc] init];
    
    myLocationManager.delegate = self;
    
    [myLocationManager requestWhenInUseAuthorization];
    
    [myLocationManager startUpdatingLocation];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
    NSLog(@"didUpdateLocations");
    
    CLLocation *location = locations[0];
    CLLocationCoordinate2D coordinate = location.coordinate;

    MyAnnotation *point = [[MyAnnotation alloc] initWithCoordinate:coordinate];
    point.title = @"This is Title";
    point.subtitle = @"This is subtitle";
    
    [mapView addAnnotation:point];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    

//    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
//    point.coordinate = coordinate;
//    point.title = @"This is Title";
//    point.subtitle = @"This is subtitle";


}

-(void) zoomToPuneRegion {
    CLLocationCoordinate2D coordinate = CLLocationCoordinate2DMake(18.5204, 73.8567);
    MKCoordinateSpan span = MKCoordinateSpanMake(2, 2);
    MKCoordinateRegion region = MKCoordinateRegionMake(coordinate, span);
    
    [mapView setRegion:region animated:YES];
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated {
//    NSLog(@"regionWillChangeAnimated");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
//    NSLog(@"regionDidChangeAnimated");
}

- (void)mapViewWillStartLoadingMap:(MKMapView *)mapView {
//    NSLog(@"mapViewWillStartLoadingMap");
}

- (void)mapViewDidFinishLoadingMap:(MKMapView *)mapView {
//    NSLog(@"mapViewDidFinishLoadingMap");
    
}

- (void)mapViewDidFailLoadingMap:(MKMapView *)mapView withError:(NSError *)error {
//    NSLog(@"mapViewDidFailLoadingMap");
}

- (void)mapViewWillStartRenderingMap:(MKMapView *)mapView NS_AVAILABLE(10_9, 7_0) {
//    NSLog(@"mapViewWillStartRenderingMap");
}
- (void)mapViewDidFinishRenderingMap:(MKMapView *)mapView fullyRendered:(BOOL)fullyRendered NS_AVAILABLE(10_9, 7_0) {
//    NSLog(@"mapViewDidFinishRenderingMap");
//    [self zoomToPuneRegion];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
