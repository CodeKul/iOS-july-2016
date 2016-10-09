//
//  ViewController.m
//  XMLParserDemo
//
//  Created by Varun on 24/09/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSMutableArray *arrTitles;
    NSMutableString *strData;
    
    IBOutlet UITableView *myTableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSXMLParser *myParser = [[NSXMLParser alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://www.news18.com/rss/hockey.xml"]];
    myParser.delegate = self;
    
    [myParser parse];

}

-(void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary<NSString *,NSString *> *)attributeDict {
    
    if ([elementName isEqualToString:@"channel"]) {
        arrTitles = [[NSMutableArray alloc] init];
    }
    else if ([elementName isEqualToString:@"description"]) {
        strData = [[NSMutableString alloc] init];
    }
}

-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string {
    
    [strData appendString:string];
}

-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName {
    if ([elementName isEqualToString:@"channel"]) {

        [myTableView reloadData];
    }
    else if ([elementName isEqualToString:@"description"]) {
        
        [arrTitles addObject:strData];
    }
    strData = nil;

}

-(void)parserDidEndDocument:(NSXMLParser *)parser {
    NSLog(@"arrCities: %@",arrTitles);
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return arrTitles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = arrTitles[indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
