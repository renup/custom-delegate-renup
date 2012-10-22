//
//  AnimationManager.m
//  CustomDelegate
//
//  Created by Anil Punjabi on 10/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AnimationManager.h"

@implementation AnimationManager
@synthesize animDelegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)startAnimationForView:(UIView *)smallView {
    
    [UIView animateWithDuration:1.0f animations:^{ 
        smallView.frame = CGRectMake(0,0, smallView.frame.size.width, smallView.frame.size.height);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:1.0 animations:^{
            smallView.frame = CGRectMake(320- smallView.frame.size.width, 460 - smallView.frame.size.height, smallView.frame.size.width, smallView.frame.size.height);
        }completion:^(BOOL finished) {
            [self.animDelegate animationCompleted];
        }];
    }];
}
    



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
