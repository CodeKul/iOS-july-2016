//
//  ViewController.h
//  WebView2
//
//  Created by Varun on 01/08/16.
//  Copyright © 2016 CodeKul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>

@property (nonatomic , strong) IBOutlet UIWebView * webView;
@property (nonatomic , strong) IBOutlet UITextField * txtUrl;
@property (nonatomic , strong) IBOutlet UIActivityIndicatorView * loader;

@end

