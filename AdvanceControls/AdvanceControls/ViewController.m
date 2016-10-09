//
//  ViewController.m
//  AdvanceControls
//
//  Created by Varun on 27/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *myView;
    NSArray *arrData;
    NSArray *arrAlphaData;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

/*    UIDatePicker *datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(20, 20, 280, 200)];
    datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    [datePicker addTarget:self action:@selector(datePickerValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
*/
    
    arrData = @[@"Red",@"Green",@"Blue",@"Mgenta",@"Yellow"];
    arrAlphaData = @[@"0.0",@"0.2",@"0.4",@"0.6",@"0.8",@"1.0"];
    
    myView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 280, 200)];
    myView.backgroundColor = [UIColor redColor];
    [self.view addSubview:myView];
    
    UIPickerView *myPickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(20, 220, 280, 200)];
    myPickerView.delegate = self;
    myPickerView.dataSource = self;
    
    [self.view addSubview:myPickerView];
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    
    if (component == 0) {
        return arrData.count;
    }
    else {
        return arrAlphaData.count;
    }
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    
    if (component == 0) {
        return arrData[row];
    }
    else {
        return arrAlphaData[row];
    }
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    
    if (component == 0) {
        switch (row) {
            case 0:
                [myView setBackgroundColor:[UIColor redColor]];
                break;
            case 1:
                [myView setBackgroundColor:[UIColor greenColor]];
                break;
            case 2:
                [myView setBackgroundColor:[UIColor blueColor]];
                break;
            case 3:
                [myView setBackgroundColor:[UIColor magentaColor]];
                break;
            case 4:
                [myView setBackgroundColor:[UIColor yellowColor]];
                break;
            default:
                break;
        }
    }
    else {
        myView.alpha = [arrAlphaData[row] floatValue];
    }
}

-(void) datePickerValueChanged:(UIDatePicker *)myDatePicker
{
    NSLog(@"SelectedDate: %@",myDatePicker.date);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
