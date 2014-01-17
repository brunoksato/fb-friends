//
//  AppDelegate.h
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@class LoginViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) LoginViewController *rootViewController;
@property (strong, nonatomic) UIWindow *window;

@end
