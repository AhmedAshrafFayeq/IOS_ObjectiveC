//
//  ViewController.m
//  SyncAndAsyncWebView
//
//  Created by JETS Mobil Lab -  on 4/22/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)syncBtn:(UIButton *)sender;
- (IBAction)asyncBtn:(UIButton *)sender;

@end

@implementation ViewController
{
    NSMutableData *recievedData;
    NSURL *url;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    url=[NSURL URLWithString:@"https://maktoob.yahoo.com"];
    
    
}


- (IBAction)syncBtn:(UIButton *)sender {
    
    NSString *str=[[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    [_webView loadHTMLString:str baseURL:nil];
}

- (IBAction)asyncBtn:(UIButton *)sender {
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    NSURLConnection *connection=[[NSURLConnection alloc]initWithRequest:request delegate:self];
    [_webView loadRequest:request];
    [connection start];
    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didRecieveResponse\n");
    recievedData=[NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [recievedData appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSString *str=[[NSString alloc]initWithData:recievedData encoding:NSUTF8StringEncoding];
    [_webView loadHTMLString:str baseURL:nil];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("error loading the content\n");
}


@end
