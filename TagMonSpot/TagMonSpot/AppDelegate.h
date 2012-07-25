//
//  AppDelegate.h
//  TagMonSpot
//
//  Created by Philippe Landry on 12-06-22.
//  Copyright (c) 2016 jcpldev.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (nonatomic, strong) NSString* couicuoi;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
