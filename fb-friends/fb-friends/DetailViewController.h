//
//  DetailViewController.h
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
