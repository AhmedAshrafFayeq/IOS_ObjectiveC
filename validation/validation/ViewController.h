//
//  ViewController.h
//  validation
//
//  Created by JETS Mobil Lab -  on 4/11/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *myField;
- (IBAction)NumberBtn:(id)sender;
- (IBAction)TextBtn:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *myLabel;

@end

