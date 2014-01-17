//
//  AppDelegate.m
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
    return [FBAppCall handleOpenURL:url sourceApplication:sourceApplication];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
   // if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
     //   self.rootViewController = [[LoginViewController alloc] initWithNibName:@"Main_iPhone" bundle:nil];
    //} else {
      //  self.rootViewController = [[FPViewController alloc] initWithNibName:@"Main_iPad" bundle:nil];
    //}
//#ifdef __IPHONE_7_0
//#ifdef __IPHONE_OS_VERSION_MAX_ALLOWED
//#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_7_0
//    if ([self.rootViewController respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
//        self.rootViewController.edgesForExtendedLayout &= ~UIRectEdgeTop;
//    }
//#endif
//#endif
//#endif
//    self.rootViewController.navigationItem.title = @"Stalkear";
//    
//    // Set up a UINavigationController as the basis of this app, with the nib generated viewController
//    // as the initial view.
//    UINavigationController *navigationController =
//    [[UINavigationController alloc] initWithRootViewController:self.rootViewController];
//    
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    self.window.rootViewController = navigationController;
//    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (NSUInteger)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskAllButUpsideDown;
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    [FBAppEvents activateApp];
    [FBAppCall handleDidBecomeActive];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [FBSession.activeSession close];
}

@end
