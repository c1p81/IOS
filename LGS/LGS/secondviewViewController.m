//
//  secondviewViewController.m
//  LGS
//
//  Created by Luca Innocenti on 21/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "secondviewViewController.h"

@interface secondviewViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *Vista2;

@end

@implementation secondviewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [_Vista2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/MVT_RealTime_1.png"]]];
    }


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sens1:(id)sender {
    [_Vista2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/MVT_RealTime_1.png"]]];

}
- (IBAction)sens2:(id)sender {
    [_Vista2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/MVT_RealTime_2.png"]]];

}
- (IBAction)sens3:(id)sender {
    [_Vista2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/MVT_RealTime_3.png"]]];

}
- (IBAction)sens4:(id)sender {
    [_Vista2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/MVT_RealTime_4.png"]]];

}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
