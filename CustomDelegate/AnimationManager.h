//
//  AnimationManager.h
//  CustomDelegate
//
//  Created by Anil Punjabi on 10/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol AnimationDelegate
-(void)animationCompleted;
@end


@interface AnimationManager : UIView

@property (nonatomic, weak)id <AnimationDelegate> animDelegate;

-(void)startAnimationForView:(UIView *)smallView;

@end
