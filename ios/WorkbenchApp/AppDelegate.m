#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, WKNavigationDelegate>
@property (strong, nonatomic) UIWindow *window;
@end

@implementation AppDelegate
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    UIViewController *vc = [[UIViewController alloc] init];
    WKWebView *webView = [[WKWebView alloc] initWithFrame:vc.view.bounds];
    webView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    webView.navigationDelegate = self;
    [vc.view addSubview:webView];
    NSURL *url = [NSURL URLWithString:@"https://4ma5gbneg5009.doubaao.link/"];
    [webView loadRequest:[NSURLRequest requestWithURL:url]];
    self.window.rootViewController = vc;
    [self.window makeKeyAndVisible];
    return YES;
}
@end
