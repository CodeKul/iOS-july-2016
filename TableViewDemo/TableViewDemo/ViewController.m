//
//  ViewController.m
//  TableViewDemo
//
//  Created by Varun on 28/07/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "MyCustomCell.h"

@interface ViewController ()
{
    NSArray *arrData;
    NSArray *arrCricketers;
    NSArray *arrFootballers;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Player *p1 = [[Player alloc] init];
    p1.name = @"Sachin Tendulkar";
    p1.profilePhoto = @"sachin.jpeg";
    p1.age = @"40";
    p1.score = @"40100";
    
    Player *p2 = [[Player alloc] init];
    p2.name = @"MS Dhoni";
    p2.profilePhoto = @"dhoni.jpeg";
    p2.age = @"30";
    p2.score = @"23000";
 
    
    Player *p3 = [[Player alloc] init];
    p3.name = @"Rohit Sharma ";
    p3.profilePhoto = @"rohit.jpeg";
    p3.age = @"23";
    p3.score = @"32000";
    
    
    Player *p4 = [[Player alloc] init];
    p4.name = @"Shikhar Dhawan";
    p4.profilePhoto = @"shikhar.jpeg";
    p4.age = @"24";
    p4.score = @"29000";
    
    
    Player *p5 = [[Player alloc] init];
    p5.name = @"Virat Kohali";
    p5.profilePhoto = @"virat.jpeg";
    p5.age = @"26";
    p5.score = @"11000";
    
    arrCricketers = @[p1,p2,p3,p4,p5];
    
 
    Player *p6 = [[Player alloc] init];
    p6.name = @"Lionel Messi";
    p6.profilePhoto = @"messi.jpeg";
    p6.age = @"35";
    p6.score = @"500";
    
    Player *p7 = [[Player alloc] init];
    p7.name = @"David Beckham";
    p7.profilePhoto = @"david.jpeg";
    p7.age = @"50";
    p7.score = @"350";
    
    
    Player *p8 = [[Player alloc] init];
    p8.name = @"Ronaldo";
    p8.profilePhoto = @"ronaldo.jpeg";
    p8.age = @"28";
    p8.score = @"400";
    
    
    Player *p9 = [[Player alloc] init];
    p9.name = @"Neymar jnr";
    p9.profilePhoto = @"neymar.jpeg";
    p9.age = @"24";
    p9.score = @"290";
    
    
    Player *p10 = [[Player alloc] init];
    p10.name = @"Pele";
    p10.profilePhoto = @"pele.jpeg";
    p10.age = @"76";
    p10.score = @"600";
    
    arrFootballers = @[p6,p7,p8,p9,p10];
    
    arrData = @[arrCricketers,arrFootballers];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"numberOfSectionsInTableView");
    return arrData.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    
        return [arrData[section] count];
 

}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if (section == 0) {
        return @"Cricketers";

    } else {
        return @"Footballers";

    }

}

/*
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    
    UILabel *lblHeader = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    
    if (section == 0) {
        lblHeader.textColor = [UIColor blueColor];
        lblHeader.text = @"Section 1";
    }
    else {
        lblHeader.textColor = [UIColor redColor];
        lblHeader.text = @"Section 2";
    }
    return lblHeader;
}
*/


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    return 100;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"cellForRowAtIndexPath");
    
    
    MyCustomCell *myCell = [tableView dequeueReusableCellWithIdentifier:@"myCell"];
    
    if (!myCell) {
        myCell = [[MyCustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"myCell"];
    }
 
    Player * p = arrData[indexPath.section][indexPath.row];
    
    myCell.PlayerName.text = p.name;
    myCell.PlayerImageView.image = [UIImage imageNamed:p.profilePhoto];
    myCell.PlayerAge.text = p.age;
    myCell.PlayerScore.text = p.score;
    
    return myCell;
    
}




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0) {
        switch (indexPath.row) {
            case 0:
                self.view.backgroundColor = [UIColor redColor];
                break;
            case 1:
                self.view.backgroundColor = [UIColor greenColor];
                break;
            case 2:
                self.view.backgroundColor = [UIColor blueColor];
                break;
            case 3:
                self.view.backgroundColor = [UIColor yellowColor];
                break;
            case 4:
                self.view.backgroundColor = [UIColor magentaColor];
                break;
            case 5:
                self.view.backgroundColor = [UIColor cyanColor];
                break;
            case 6:
                self.view.backgroundColor = [UIColor orangeColor];
                break;
            case 7:
                self.view.backgroundColor = [UIColor purpleColor];
                break;
            case 8:
                self.view.backgroundColor = [UIColor brownColor];
                break;
                
            default:
                break;
        }
    }
    else {
        switch (indexPath.row) {
            case 0:
                self.view.backgroundColor = [UIColor whiteColor];
                break;
            case 1:
                self.view.backgroundColor = [UIColor lightGrayColor];
                break;
            case 2:
                self.view.backgroundColor = [UIColor grayColor];
                break;
            case 3:
                self.view.backgroundColor = [UIColor darkGrayColor];
                break;
            case 4:
                self.view.backgroundColor = [UIColor blackColor];
                break;
            default:
                break;
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
