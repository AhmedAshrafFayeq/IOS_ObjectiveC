//
//  ViewController.m
//  loginUserDefaults
//
//  Created by JETS Mobil Lab -  on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

{
    NSUserDefaults *userDefaults;
}


- (IBAction)loginbtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *hellolabel;
@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    userDefaults=[NSUserDefaults standardUserDefaults];
    NSString *name=@"ahmed";
    NSString *password=@"12345";
    
    
    [userDefaults setObject:name forKey:@"username"];
    [userDefaults setObject:password forKey:@"password"];
    
    UISwipeGestureRecognizer *rec=[[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    rec.direction=UITraitEnvironmentLayoutDirectionRightToLeft;
    [self.view addGestureRecognizer:rec];
     
     // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (IBAction)loginbtn:(UIButton *)sender {
    if([[_username text ] isEqualToString:[userDefaults objectForKey:@"username"]] && [[_password text] isEqualToString:[userDefaults objectForKey:@"password"]])
    {
        _hellolabel.text=@"success";
    }
    else{
        _hellolabel.text=@"failed";
    }
}
-(void) next{
    
    SecondViewController *secondVC=[self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [self setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondVC animated:YES completion:nil];
}


@end
