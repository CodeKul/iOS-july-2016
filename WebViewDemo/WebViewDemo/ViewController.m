//
//  ViewController.m
//  WebViewDemo
//
//  Created by Varun on 01/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myWebView,loader;

- (void)viewDidLoad {
    [super viewDidLoad];

    NSURLRequest *req = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.codekul.com"]];
    
    [myWebView loadRequest:req];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    
    NSLog(@"URL Host: %@",[request.URL host]);
    
    NSString *host = [request.URL host];
    
    if ([host isEqualToString:@"www.facebook.com"] || [host isEqualToString:@"www.m.facebook.com"]) {
        
        [loader stopAnimating];
        NSLog(@"Facebook URL");
        return NO;
    }
    
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [loader startAnimating];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [loader stopAnimating];
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error {
    
    [loader stopAnimating];
}

@end
