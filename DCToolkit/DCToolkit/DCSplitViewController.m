//
//  DCSplitViewController.m
//  Clyde's
//
//  Created by Dylan Crocker on 1/14/13.
//  Copyright (c) 2013 Creative Solutions. All rights reserved.
//

#import "DCSplitViewController.h"

@interface DCSplitViewController ()

@end

@implementation DCSplitViewController

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

- (void)viewWillLayoutSubviews
{
  [super viewWillLayoutSubviews];
}

- (void)viewDidLayoutSubviews
{
  [super viewDidLayoutSubviews];
}

- (void)updateViewConstraints
{
  [super updateViewConstraints];
}

#pragma mark - Rotation Events

- (void)willRotateToInterfaceOrientation: (UIInterfaceOrientation)orientation
                                duration: (NSTimeInterval)duration
{
  [super willRotateToInterfaceOrientation: orientation duration: duration];
}

- (void)willAnimateRotationToInterfaceOrientation: (UIInterfaceOrientation)io
                                         duration: (NSTimeInterval)duration
{
  [super willAnimateRotationToInterfaceOrientation: io duration: duration];
}

- (void)didRotateFromInterfaceOrientation: (UIInterfaceOrientation)orientation
{
  [super didRotateFromInterfaceOrientation: orientation];
  
  // Not sure why but this delegate does not get called on its own. When the
  // rotation events are forwarded. It must have something to do with the view
  // not actually being visible.
  if (UIInterfaceOrientationIsPortrait(orientation))
  {
    id delegate = [self delegate];
    [delegate splitViewController: self
           willShowViewController: [[self viewControllers] objectAtIndex:0]
        invalidatingBarButtonItem: [super valueForKey:@"_barButtonItem"]];
  }
}

#pragma mark - Apperance Events

- (void)beginAppearanceTransition: (BOOL)isAppearing animated: (BOOL)animated
{
  [super beginAppearanceTransition: isAppearing animated: animated];
}

- (void)endAppearanceTransition
{
  [super endAppearanceTransition];
}

@end
