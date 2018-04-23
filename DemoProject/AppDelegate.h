//
//  AppDelegate.h
//  DemoProject
//
//  Created by Abhishek on 21/04/18.
//  Copyright © 2018 Abhishek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

