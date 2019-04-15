//
//  ViewController.h
//  NavigationLab
//
//  Created by JETS Mobil Lab -  on 4/13/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "myProtocol.h"
@interface ViewController : UIViewController <myProtocol>

- (IBAction)nextBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtfield;

@end

