//
//  ViewController.h
//  Calculator
//
//  Created by JETS Mobil Lab -  on 4/15/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *txt1;
@property (weak, nonatomic) IBOutlet UITextField *txt2;
@property (weak, nonatomic) IBOutlet UILabel *resultTxt;
- (IBAction)plusBtn:(UIButton *)sender;
- (IBAction)minusBtn:(UIButton *)sender;
- (IBAction)mulBtn:(UIButton *)sender;
- (IBAction)divBtn:(UIButton *)sender;

@end

