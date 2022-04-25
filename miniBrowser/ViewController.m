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
@synthesize mainWebView,urlTextField,bookMarkSegmentedControl,activityIndicatorView;
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *urlString = @"http://www.facebook.com";
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    urlTextField.text = urlString;
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSString *urlString = urlTextField.text;
    if(![urlString hasPrefix:@"http://"]){
        urlString = [[NSString alloc]initWithFormat:@"http://%@",[urlTextField text]];
    }
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlString]]];
    [textField resignFirstResponder];
    return YES;
}

- (IBAction)bookMarkAction:(id)sender {
    NSString *tempUrl = [bookMarkSegmentedControl titleForSegmentAtIndex:bookMarkSegmentedControl.selectedSegmentIndex] ;
    NSString *url = [[NSString alloc]initWithFormat:@"http://www.%@.com",[tempUrl lowercaseString]];
    [mainWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    urlTextField.text = url;
}
//webview delegate
- (void)webViewDidStartLoad:(UIWebView *)webView{
    [activityIndicatorView startAnimating];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView{
    [activityIndicatorView stopAnimating];
}
@end
