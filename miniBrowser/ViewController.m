//
//  ViewController.m
//  miniBrowser
//
//  Created by beintech on 2022/04/25.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mainWebView,urlTextField,bookMarkSegmentedControl;
- (void)viewDidLoad {
    [super viewDidLoad];
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.facebook.com"]]];
}


@end
