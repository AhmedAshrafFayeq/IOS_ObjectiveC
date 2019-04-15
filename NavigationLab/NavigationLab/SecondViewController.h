//
//  SecondViewController.h
//  NavigationLab
//
//  Created by JETS Mobil Lab -  on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property id<myProtocol> clearProtocol;
@property NSString *labeltxt;
@end

NS_ASSUME_NONNULL_END
