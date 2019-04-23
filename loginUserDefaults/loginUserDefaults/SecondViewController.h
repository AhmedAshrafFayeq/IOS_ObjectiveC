//
//  SecondViewController.h
//  loginUserDefaults
//
//  Created by JETS Mobil Lab -  on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController <UICollisionBehaviorDelegate>
@property UIDynamicAnimator *animator;
@property Boolean flag;

-(void) animation;


@end

NS_ASSUME_NONNULL_END
