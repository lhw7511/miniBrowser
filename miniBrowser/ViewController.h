//
//  ViewController.h
//  miniBrowser
//
//  Created by beintech on 2022/04/25.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UISegmentedControl *bookMarkSegmentedControl;
@property (strong, nonatomic) IBOutlet UIWebView *mainWebView;
@property (strong, nonatomic) IBOutlet UITextField *urlTextField;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;

- (IBAction)bookMarkAction:(id)sender;



@end

