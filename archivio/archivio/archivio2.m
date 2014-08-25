//
//  archivio2.m
//  archivio
//
//  Created by Luca Innocenti on 23/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "archivio2.h"

@interface archivio2 ()
@property (weak, nonatomic) IBOutlet UIWebView *risultato_vista;

@end

@implementation archivio2

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
    NSLog(@"URL_ricerca %@", url_ricerca);
    [_risultato_vista loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url_ricerca]]];
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
