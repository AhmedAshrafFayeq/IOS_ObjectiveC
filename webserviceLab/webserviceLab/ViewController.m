//
//  ViewController.m
//  webserviceLab
//
//  Created by JETS Mobil Lab -  on 4/23/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTxt;
@property (weak, nonatomic) IBOutlet UITextField *passowrdTxt;
- (IBAction)okBtn:(UIButton *)sender;

@end

@implementation ViewController

{
    NSURL *url;
    NSMutableData *recievedData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    
}


- (IBAction)okBtn:(UIButton *)sender {
    
    NSString *name=[_usernameTxt text];
    NSString *pass=[_passowrdTxt text];
    
    NSString *link=@"http://jets.iti.gov.eg/FriendsApp/services/user/register?nae=yourName&phone=yourPhone";
    link=[link stringByReplacingOccurrencesOfString:@"yourName" withString:name];
    link=[link stringByReplacingOccurrencesOfString:@"yourPhone" withString:pass];
    
    url=[NSURL URLWithString:link];
    
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[NSURLConnection connectionWithRequest:request delegate:self];
    [connection start];
    
    
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
    recievedData=[NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [recievedData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSDictionary *dictionary=[NSJSONSerialization JSONObjectWithData:recievedData options:NSJSONReadingAllowFragments error:nil];
    NSString *str=[dictionary objectForKey:@"status"];
    printf("%s\n",[str UTF8String]);
    if([str isEqualToString:@"FAILING"])
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"wait" message:@"registration failed" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:@"again", nil];
        [alert show];
    }
    else{
        // if success
    }
    
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (buttonIndex == 1) {
        _usernameTxt.text=@"";
        _passowrdTxt.text=@"";
        [_usernameTxt becomeFirstResponder];
        
    }
}

- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("Error Loading..\n");
}
@end
