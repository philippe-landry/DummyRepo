//
//  AddSceneViewController.m
//  TagMonSpot
//
//  Created by Philippe Landry on 12-06-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddSceneViewController.h"

@interface AddSceneViewController () <UITextFieldDelegate, UITextViewDelegate>

@end

@implementation AddSceneViewController
@synthesize nameField;
@synthesize detailsField;
@synthesize delegate = _delegate;


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

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [self setNameField:nil];
    [self setDetailsField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.nameField ) {
        [textField resignFirstResponder];
    }
    return YES;
}

-(BOOL) textViewShouldBeginEditing:(UITextView *)textView {
    return YES;
}
-(BOOL) textViewShouldEndEditing:(UITextView *)textView {
    if (textView == self.detailsField ) {
        [textView resignFirstResponder];
    }
    return YES;
}
#pragma mark - Table view data source
- (IBAction)cancel:(id)sender {
    [[self delegate] addSceneViewControllerDidCancel:self];
}

- (IBAction)done:(id)sender {
    [[self delegate] addSceneViewControllerDidFinish:self name:nil details:nil location:nil];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

}
@end
