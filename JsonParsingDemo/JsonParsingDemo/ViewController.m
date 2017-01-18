//
//  ViewController.m
//  JsonParsingDemo
//
//  Created by Varun on 28/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSMutableArray *arrData;
    
    IBOutlet UITableView *myTableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.geonames.org/postalCodeLookupJSON?postalcode=6600&country=AT&username=varun05"]];
    
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=varun05"]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSError *myError;
        
        NSDictionary *dictData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&myError];
        
        arrData = [dictData valueForKey:@"postalcodes"];
        
//        [myTableView reloadData];
        
        [myTableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
        
        NSLog(@"dictData: %@",dictData);
        
    }];
    
    [dataTask resume];
 
/*
    NSString *myUrlString = @"http://192.168.0.36:7171/bappa/bappa/saveBappa";
    //create string for parameters that we need to send in the HTTP POST body
    //create a NSURL object from the string data
    NSURL *myUrl = [NSURL URLWithString:myUrlString];
    
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] init];
    [dict setValue:@"gch" forKey:@"bappaName"];
    [dict setValue:@"vbjbk" forKey:@"address"];
    [dict setValue:@"vnbb" forKey:@"info"];
    [dict setValue:@"rgbrt" forKey:@"images"];
    [dict setValue:[NSNumber numberWithInt:1] forKey:@"latitude"];
    [dict setValue:[NSNumber numberWithInt:1] forKey:@"longitude"];
    [dict setValue:[NSNumber numberWithInt:1] forKey:@"likesCount"];
    
    NSMutableDictionary *userDict = [[NSMutableDictionary alloc] init];
    
    [userDict setValue:@"57beaa67b9d22e5d6a35c290" forKey:@"id"];
    [userDict setValue:@"Suraj" forKey:@"name"];
    [userDict setValue:@"8787783456" forKey:@"mobileNo"];
    [userDict setValue:@"4444" forKey:@"imei"];
    
    [dict setValue:userDict forKey:@"user"];
    
    NSData *body = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:nil];

    
    //create a mutable HTTP request
    NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:myUrl];
    //sets the receiver’s timeout interval, in seconds
    [urlRequest setTimeoutInterval:30.0f];
    //sets the receiver’s HTTP request method
    [urlRequest setHTTPMethod:@"POST"];
    //sets the request body of the receiver to the specified data.
    [urlRequest setHTTPBody:body];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    NSURLSessionDataTask *dataTask = [session dataTaskWithRequest:urlRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        NSError *myError;
        
        NSDictionary *dictData = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&myError];
        
        arrData = [dictData valueForKey:@"postalcodes"];
        
        [myTableView reloadData];
        
        [myTableView performSelectorOnMainThread:@selector(reloadData) withObject:nil waitUntilDone:YES];
        
        NSLog(@"dictData: %@",dictData);
        
    }];
    
    [dataTask resume];
*/
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return arrData.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [arrData[indexPath.row] valueForKey:@"placeName"];
    cell.detailTextLabel.text = [arrData[indexPath.row] valueForKey:@"postalcode"];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
