//
//  ViewController.h
//  CustomDelegate
//
//  Created by Anil Punjabi on 10/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AnimationManager.h"


@interface ViewController : UIViewController <AnimationDelegate>
@property (weak, nonatomic) IBOutlet UIView *smallPinkView;

- (IBAction)moveButton:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;


@end
