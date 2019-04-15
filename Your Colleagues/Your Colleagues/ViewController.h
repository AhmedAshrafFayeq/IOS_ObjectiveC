//
//  ViewController.h
//  Your Colleagues
//
//  Created by JETS Mobil Lab -  on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)nextBtn:(id)sender;
- (IBAction)preBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

