//
//  LoginViewController.m
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)loginFace:(id)sender {
    // FBSample logic
    // if the session is open, then load the data for our view controller
    if (!FBSession.activeSession.isOpen) {
        // if the session is closed, then we open it here, and establish a handler for state changes
        [FBSession openActiveSessionWithReadPermissions:nil allowLoginUI:YES
            completionHandler:^(FBSession *session,
            FBSessionState state, NSError *error) {
                if (error) {
                    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Error"
                    message:error.localizedDescription
                    delegate:nil
                    cancelButtonTitle:@"OK"
                    otherButtonTitles:nil];
                    [alertView show];
                } else if (session.isOpen) {
                    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:@"timelineView"];
                    [self presentViewController:controller animated:YES completion:nil];
                }
            }];
        return;
    }
}

@end
