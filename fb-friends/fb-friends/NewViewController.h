//
//  NewViewController.h
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>

@interface NewViewController : UITableViewController<FBFriendPickerDelegate>
- (IBAction)faceFriends:(id)sender;

@end
