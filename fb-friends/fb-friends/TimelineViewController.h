//
//  TimelineViewController.h
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWPhotoBrowser.h"
#import "MWPhoto.h"
#import "FBGTimelineCell.h"
#import "FBGTimelinePhotoView.h"

@interface TimelineViewController : UITableViewController<MWPhotoBrowserDelegate>

@property(nonatomic, strong) NSArray *photos;

@end
