#import "RootViewController.h"
 
@implementation RootViewController
@synthesize webView;
- (void)loadView {
	self.view = [[[UIView alloc] initWithFrame:[[UIScreen mainScreen] applicationFrame]] autorelease];
	self.view.backgroundColor = [UIColor redColor];

	webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.view = webView;        // strong reference: retains webView
    [webView release];          // release initial reference: now 'owned' through self.view
}

 
- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.google.com";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [webView loadRequest:requestObj];
}
 
@end