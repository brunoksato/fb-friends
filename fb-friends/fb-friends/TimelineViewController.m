//
//  TimelineViewController.m
//  fb-friends
//
//  Created by Bruno Kenji Sato Romeu on 1/16/14.
//  Copyright (c) 2014 brunosato. All rights reserved.
//

#import "TimelineViewController.h"
#import "UIView+viewController.h"

@interface TimelineViewController ()

@end

@implementation TimelineViewController
@synthesize photos = _photos;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void) browsePhoto:(id)container
{
    UIImageView *photo = [container objectAtIndex:1];
    
    NSMutableArray *photos = [[NSMutableArray alloc] init];
    
    [photos addObject:[MWPhoto photoWithImage:[photo image]]];
    [photos addObject:[MWPhoto photoWithImage:[UIImage imageNamed:@"5.jpg"]]];
    
    CGRect photoFrame = [photo frame];
    
    self.photos = photos;
    
	// Create browser
    MWPhotoBrowser *browser = [[MWPhotoBrowser alloc] initWithDelegate:self];
    [browser setInitialPageIndex:0];
    browser.displayActionButton = YES;
    
    // Hide tapped image from screenshot
    [[container objectAtIndex:0] setHidden:YES];
    browser.screenshot = [UIView screenshotForScreen];
    [[container objectAtIndex:0] setHidden:NO];
    
    UIImageView *tempImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, photoFrame.size.width, photoFrame.size.height)];
    tempImg.contentMode = UIViewContentModeScaleAspectFill;
    [tempImg setImage:[photo image]];
    browser.entranceImg = tempImg;
    browser.entranceImg.clipsToBounds = YES;
    
    //    photoFrame.origin.y += 20;
    [browser.entranceImg setFrame:photoFrame];
    
    [self presentViewController:browser animated:NO completion:nil];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 6;
}

- (float) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 450;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"timelineCell";
    FBGTimelineCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    if (![cell configured])
    {
        [cell initTimelineCell];
    }
    
    UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", indexPath.row]];
    cell.photoView.image = img;
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

#pragma mark - MWPhotoBrowserDelegate

- (NSUInteger)numberOfPhotosInPhotoBrowser:(MWPhotoBrowser *)photoBrowser {
    return _photos.count;
}

- (MWPhoto *)photoBrowser:(MWPhotoBrowser *)photoBrowser photoAtIndex:(NSUInteger)index {
    if (index < _photos.count)
        return [_photos objectAtIndex:index];
    return nil;
}

@end
