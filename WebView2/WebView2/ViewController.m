//
//  ViewController.m
//  WebView2
//
//  Created by Varun on 01/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize webView, txtUrl, loader;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}



- (IBAction)goClicked:(id)sender {
   
    NSLog(@"clicked");
    
    NSURL * url = [NSURL URLWithString:txtUrl.text];
    
    NSURLRequest * req = [NSURLRequest requestWithURL:url];
    
    [webView loadRequest:req];
    
}


- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
    
    NSString * host = [request.URL host];
    
    if ([host isEqualToString:@"www.facebook.com"] || [host isEqualToString:@"m.www.facebook.com"]) {
        return NO;
    }
    txtUrl.text =  [NSString stringWithFormat:@"%@",request.URL];
    
    return YES;
}


- (void)webViewDidStartLoad:(UIWebView *)webView{

    NSLog(@"view start loading");
    [loader startAnimating];
}


- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    [loader stopAnimating];
}


- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
    [loader stopAnimating];

}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
