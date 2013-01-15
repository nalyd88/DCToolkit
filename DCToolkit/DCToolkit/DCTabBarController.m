//
//  DCTabBarController.m
//  Clyde's
//
//  Created by Dylan Crocker on 1/13/13.
//  Copyright (c) 2013 Creative Solutions. All rights reserved.
//

#import "DCTabBarController.h"

@interface DCTabBarController ()

@end

@implementation DCTabBarController

- (id)initWithNibName: (NSString *)nibNameOrNil
               bundle: (NSBundle *)nibBundleOrNil
{
  if (self = [super initWithNibName: nibNameOrNil bundle: nibBundleOrNil])
  {
    // Custom initialization
  }
  return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Managing the View

- (void)viewWillAppear: (BOOL)animated
{
  [super viewWillAppear: animated];
}

- (void)viewDidAppear: (BOOL)animated
{
  [super viewDidAppear: animated];
}

- (void)viewWillDisappear: (BOOL)animated
{
  [super viewWillDisappear: animated];
}

- (void)viewDidDisappear: (BOOL)animated
{
  [super viewDidDisappear: animated];
}

/*
- (void)viewWillLayoutSubviews
{
  [super viewWillLayoutSubviews];
  for (UIViewController *cvc in self.childViewControllers)
  {
    if ((cvc.view.superview == nil) &&
        ([cvc isKindOfClass: [UISplitViewController class]]))
    {
      [cvc viewWillLayoutSubviews];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  [super viewDidLayoutSubviews];
  for (UIViewController *cvc in self.childViewControllers)
  {
    if ((cvc.view.superview == nil) &&
        ([cvc isKindOfClass: [UISplitViewController class]]))
    {
      [cvc viewDidLayoutSubviews];
    }
  }
}

- (void)updateViewConstraints
{
  [super updateViewConstraints];
  for (UIViewController *cvc in self.childViewControllers)
  {
    if ((cvc.view.superview == nil) &&
        ([cvc isKindOfClass: [UISplitViewController class]]))
    {
      [cvc updateViewConstraints];
    }
  }
}
*/

#pragma mark - Managing Child View Controllers in a Custom Container

- (BOOL)shouldAutomaticallyForwardRotationMethods
{
  return YES;
}

- (BOOL)shouldAutomaticallyForwardAppearanceMethods
{
  return YES;
}

#pragma mark - Rotation Events

- (void)willRotateToInterfaceOrientation: (UIInterfaceOrientation)orientation
                                duration: (NSTimeInterval)duration
{
  [super willRotateToInterfaceOrientation: orientation duration: duration];
 
  // Forward manually to any non-viewable child split view controllers.
  for (UIViewController *cvc in self.childViewControllers)
  {
    if ((cvc.view.superview == nil) &&
        ([cvc isKindOfClass: [UISplitViewController class]]))
    {
      [cvc willRotateToInterfaceOrientation: orientation duration: duration];
    }
  }
}

- (void)willAnimateRotationToInterfaceOrientation: (UIInterfaceOrientation)io
                                         duration: (NSTimeInterval)duration
{
  [super willAnimateRotationToInterfaceOrientation: io duration: duration];
  for (UIViewController *cvc in self.childViewControllers)
  {
    if ((cvc.view.superview == nil) &&
        ([cvc isKindOfClass: [UISplitViewController class]]))
    {
      [cvc willAnimateRotationToInterfaceOrientation: io duration: duration];
    }
  }
}

- (void)didRotateFromInterfaceOrientation: (UIInterfaceOrientation)orientation
{
  [super didRotateFromInterfaceOrientation: orientation];
  for (UIViewController *cvc in self.childViewControllers)
  {
    if ((cvc.view.superview == nil) &&
        ([cvc isKindOfClass: [UISplitViewController class]]))
    {
      [cvc didRotateFromInterfaceOrientation: orientation];
    }
  }
}

#pragma mark - Appearance Transitions

- (void)beginAppearanceTransition: (BOOL)isAppearing animated: (BOOL)animated
{
  [super beginAppearanceTransition: isAppearing animated: animated];
}

- (void)endAppearanceTransition
{
  [super endAppearanceTransition];
}


@end
