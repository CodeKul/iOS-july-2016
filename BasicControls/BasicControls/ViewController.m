//
//  ViewController.m
//  BasicControls
//
//  Created by Varun on 20/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    UIView *myView;
    UILabel *lblColorInfo;
    NSInteger redValue,greenValue,blueValue;
    
    NSArray *arrImages;
    NSInteger currentImageIndex;
    
    UIImageView *myImageView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
/*
//    UIView
    
    CGRect frame = CGRectMake(20, 20, 280, 200);
    myView = [[UIView alloc] initWithFrame:frame];
    [myView setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:myView];
    
//    UILabel
    
    UILabel *myLabel = [[UILabel alloc] init];
    myLabel.frame = CGRectMake(90, 85, 100, 30);
    myLabel.text = @"CodeKul";
//    [myLabel setBackgroundColor:[UIColor yellowColor]];
    [myLabel setTextColor:[UIColor whiteColor]];
    [myLabel setTextAlignment:NSTextAlignmentCenter];
    [myView addSubview:myLabel];

    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(myLabel.frame.origin.x, myLabel.frame.origin.y + 40, 100, 30)];
    
    [btn setTitle:@"Done" forState:UIControlStateNormal];
    
    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    
    [myView addSubview:btn];

//    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(myLabel.frame.origin.x + 9, myLabel.frame.origin.y + myLabel.frame.size.height + 10, 80, 20)];
//    [btn setTitle:@"Submit" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
//    [myView addSubview:btn];

    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"Red",@"Green",@"Yellow",@"Magenta",@"Black",@"White",@"Gray"]];
    segmentedControl.frame = CGRectMake(35, 300, 250, 50);
    segmentedControl.selectedSegmentIndex = 0;
    [segmentedControl addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];

    UISlider *sliderRed = [[UISlider alloc] initWithFrame:CGRectMake(20, 350, 280, 50)];
    sliderRed.maximumValue = 255;
    sliderRed.minimumValue = 0;
    sliderRed.value = 0;
    sliderRed.tag = 100;
    [sliderRed addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderRed];
    

   UISlider *sliderGreen = [[UISlider alloc] initWithFrame:CGRectMake(20, 410, 280    , 50)];
    sliderGreen.maximumValue = 255;
    sliderGreen.minimumValue = 0;
    sliderGreen.value = 0;
    sliderGreen.tag = 101;
    [sliderGreen addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderGreen];
    UISlider *sliderBlue = [[UISlider alloc] initWithFrame:CGRectMake(20, 470, 280, 50)];
    sliderBlue.maximumValue = 255;
    sliderBlue.minimumValue = 0;
    sliderBlue.value = 0;
    sliderBlue.tag = 102;
    [sliderBlue addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:sliderBlue];

    lblColorInfo = [[UILabel alloc] initWithFrame:CGRectMake(20, 530, 280, 30)];
    lblColorInfo.textAlignment = NSTextAlignmentCenter;
    lblColorInfo.text = [NSString stringWithFormat:@"Red:%zd Green:%zd Blue:%zd",redValue,greenValue,blueValue];
    [self.view addSubview:lblColorInfo];

    currentImageIndex = 0;

    arrImages = [[NSArray alloc] initWithObjects:@"image1",@"image2",@"image3.jpg",@"image4", nil];
    
    myImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    myImageView.center = self.view.center;
    myImageView.image = [UIImage imageNamed:[arrImages objectAtIndex:currentImageIndex]];
    [self.view addSubview:myImageView];
    
    UIButton *btnLeft = [[UIButton alloc] initWithFrame:CGRectMake(10, 0, 50, 30)];
    [btnLeft setTitle:@"<-" forState:UIControlStateNormal];
    [btnLeft setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btnLeft.center = CGPointMake(btnLeft.center.x,self.view.center.y);
    [btnLeft addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    btnLeft.tag = 1;
    [self.view addSubview:btnLeft];

    UIButton *btnRight = [[UIButton alloc] initWithFrame:CGRectMake(self.view.frame.size.width - 60, 0, 50, 30)];
    [btnRight setTitle:@"->" forState:UIControlStateNormal];
    btnRight.center = CGPointMake(btnRight.center.x,self.view.center.y);
    [btnRight setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];[btnRight addTarget:self action:@selector(btnClicked:) forControlEvents:UIControlEventTouchUpInside];
    btnRight.tag = 2;
    [self.view addSubview:btnRight];*/
}

- (IBAction)btnClicked:(UIButton *)sender {
    [sender setTitle:@"btnClicked" forState:UIControlStateNormal];
    self.view.backgroundColor = [UIColor redColor];
    _lblTitle.text = @"CodeKul";
}


/*
-(void) btnClicked:(UIButton *) btn {
    
    if (btn.tag == 1) {
        if (currentImageIndex < 3) {
            currentImageIndex ++;
        }
    }
    else {
        if (currentImageIndex > 0) {
            currentImageIndex --;
        }
    }
    myImageView.image = [UIImage imageNamed:[arrImages objectAtIndex:currentImageIndex]];
}
*/

/*
-(void) sliderValueChanged:(UISlider *) slider {

    if (slider.tag == 100) {
        redValue = slider.value;
    }
    else if (slider.tag == 101) {
        greenValue = slider.value;
    }
    else {
        blueValue = slider.value;
    }
    [myView setBackgroundColor:[UIColor colorWithRed:redValue/255.0 green:greenValue/255.0 blue:blueValue/255.0 alpha:1]];
    lblColorInfo.text = [NSString stringWithFormat:@"Red:%zd Green:%zd Blue:%zd",redValue,greenValue,blueValue];
}

-(void) btnClicked:(UISegmentedControl *) btn{

    switch (btn.selectedSegmentIndex) {
     case 0:
            self.view.backgroundColor = [UIColor redColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor magentaColor];
            break;
        case 4:
            self.view.backgroundColor = [UIColor blackColor];
            break;
        case 5:
            self.view.backgroundColor = [UIColor whiteColor];
            break;
        case 6:
            self.view.backgroundColor = [UIColor grayColor];
            break;
            
        default:
            break;
    }
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

/*
- (IBAction)switchValueChanged:(UISwitch *)sender {
    
    if (sender.isOn) {
        _lblTitle.text = @"Welcome to CodeKul";
    }
    else {
        _lblTitle.text = @"Have a nice day";
    }*/
}
- (IBAction)ValueChanged:(UISwitch *)sender {
    
    if (sender.isOn) {
        _lblTitle.text = @"submit";
    }
    else {
        _lblTitle.text = @"Delete";
    }
}

- (IBAction)valuechanged:(UISlider *)sender {
    
//    _lblTitle.text= [NSString stringWithFormat:@" %f" ,sender.value];

    _lblTitle.alpha = sender.value;
}

- (IBAction)valuechanged:(UISegmentedControl *)sender forEvent:(UIEvent *)event {
    switch (sender.selectedSegmentIndex) {
        case 0:
            _lblTitle.backgroundColor=[UIColor redColor];
            break;
        case 1:
            _lblTitle.backgroundColor=[UIColor greenColor];
            break;
        case 2:
            _lblTitle.backgroundColor=[UIColor blueColor];
            break;
            
        default:
            break;
    }
}

- (IBAction)aaa:(UISwitch *)sender {
    if(sender.isOn){
    _lblTitle.text=@"submit";
    }
    else
    _lblTitle.text=@"delete";
    
}



@end
