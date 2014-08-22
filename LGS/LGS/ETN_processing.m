//
//  ETN_processing.m
//  LGS
//
//  Created by Luca Innocenti on 22/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "ETN_processing.h"

@interface ETN_processing ()
@property (weak, nonatomic) IBOutlet UIWebView *ETNProc_vista;

@end

@implementation ETN_processing

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
    [_ETNProc_vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://lgs.geo.unifi.it/Etna/DatabaseFIG/etn_sound_realtime.png"]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
