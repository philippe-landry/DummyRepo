//
//  AddSceneViewController.h
//  TagMonSpot
//
//  Created by Philippe Landry on 12-06-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@protocol AddSceneViewControllerDelegate;
@interface AddSceneViewController : UITableViewController
@property (weak, nonatomic) IBOutlet UITextField *nameField;
@property (weak, nonatomic) IBOutlet UITextView *detailsField;
@property (weak, nonatomic) id<AddSceneViewControllerDelegate> delegate;
- (IBAction)cancel:(id)sender;
- (IBAction)done:(id)sender;
@end


@protocol AddSceneViewControllerDelegate <NSObject>
- (void)addSceneViewControllerDidCancel:(AddSceneViewController *)controller;
- (void)addSceneViewControllerDidFinish:(AddSceneViewController *)controller name:(NSString *)name details:(NSString*) details location:(CLLocation*)location;
@end