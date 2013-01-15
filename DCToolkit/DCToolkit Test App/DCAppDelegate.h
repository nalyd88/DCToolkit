//
//  DCAppDelegate.h
//  DCToolkit
//
//  Created by Dylan Crocker on 1/14/13.
//  Copyright (c) 2013 Dylan Crocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
