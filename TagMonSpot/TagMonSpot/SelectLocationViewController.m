//
//  SelectLocationViewController.m
//  TagMonSpot
//
//  Created by Philippe Landry on 12-06-26.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SelectLocationViewController.h"

@interface SelectLocationViewController ()

@property (weak, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)location:(id)sender;
- (IBAction)longPressAction:(UILongPressGestureRecognizer *)sender;


@end

@implementation SelectLocationViewController
@synthesize mapView;

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
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setMapView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)location:(UIBarButtonItem*)sender {
    
    self.mapView.showsUserLocation = !self.mapView.showsUserLocation;
    
}

- (IBAction)longPressAction:(UILongPressGestureRecognizer *)sender {
    
    // Obtenir les coordonées de l'événement
    MKMapView* map = (MKMapView*) sender.view;
    CGPoint hit = [sender locationInView:map];
    CLLocationCoordinate2D location = [map convertPoint:hit toCoordinateFromView:map];
    
    
    
}
 
@end
