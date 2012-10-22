//
//  ViewController.m
//  CustomDelegate
//
//  Created by Anil Punjabi on 10/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    AnimationManager *animObj;
}

@end

@implementation ViewController
@synthesize statusLabel;
@synthesize smallPinkView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.statusLabel.text = @" ";
    animObj = [[AnimationManager alloc] init];
    animObj.animDelegate = self;
}

- (void)viewDidUnload
{
    [self setSmallPinkView:nil];
    [self setStatusLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)moveButton:(id)sender {
    [animObj startAnimationForView:self.smallPinkView];
}

#pragma Animation delegate methods

 -(void)animationCompleted{
   self.statusLabel.text = @"Done";
}

@end
