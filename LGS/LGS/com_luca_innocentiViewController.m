//
//  com_luca_innocentiViewController.m
//  LGS
//
//  Created by Luca Innocenti on 16/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "com_luca_innocentiViewController.h"

@interface com_luca_innocentiViewController ()

@end

@implementation com_luca_innocentiViewController
@synthesize  spinner=_spinner;

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_Vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/ETN_RealTime1.png"]]];
}

-(void) webViewDidStartLoad:(UIWebView *)webView{
    [_spinner startAnimating];
}
-(void) webViewDidFinishLoad:(UIWebView *)webView{
    [_spinner stopAnimating];
    _spinner.hidden=YES;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Sens1:(id)sender {
    [_Vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/ETN_RealTime1.png"]]];

}
- (IBAction)Sens2:(id)sender {
    [_Vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/ETN_RealTime2.png"]]];
}
- (IBAction)Sens3:(id)sender {
    [_Vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/ETN_RealTime3.png"]]];

}
- (IBAction)Sens4:(id)sender {
    [_Vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/ETN_RealTime4.png"]]];

}
@end
