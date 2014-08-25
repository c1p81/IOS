//
//  archivio.m
//  LGS
//
//  Created by Luca Innocenti on 25/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "archivio.h"
#import "ricerca.h"


@interface archivio ()
@property (weak, nonatomic) IBOutlet UIWebView *risultato_ricerca;

@end

@implementation archivio

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
    [_risultato_ricerca loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url_ricerca]]];


}


- (IBAction)help:(id)sender {
    
    NSRange r = NSMakeRange(50, 3);
    NSString *stazione = [url_ricerca substringWithRange: r];
    NSRange r2 = NSMakeRange(54, 8);
    NSString *data = [url_ricerca substringWithRange: r2];
    
    NSRange r3 = NSMakeRange(65, 1);
    NSString *sensore = [url_ricerca substringWithRange: r3];

    NSRange r4 = NSMakeRange(63, 1);
    NSString *ora = [url_ricerca substringWithRange: r4];
    if ([ora isEqualToString:@"1"])
    {
        ora = @"00-06";
    }
    if ([ora isEqualToString:@"2"])
    {
        ora = @"00-06";
    }
    if ([ora isEqualToString:@"3"])
    {
        ora = @"00-06";
    }
    if ([ora isEqualToString:@"4"])
    {
        ora = @"00-06";
    }


    NSString *messaggio = [NSString stringWithFormat: @"%@%@%@%@%@%@%@", stazione,@"-",sensore,@"\n", data,@"\n", ora];
    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Help"
                                                      message:messaggio
                                                     delegate:nil
                                            cancelButtonTitle:@"OK"
                                            otherButtonTitles:nil];
    
    [message show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)primo:(id)sender {
    NSRange r = NSMakeRange(0, 63);
    NSString *se = [url_ricerca substringWithRange: r];
    NSString *coda = [url_ricerca substringFromIndex:url_ricerca.length-6];
    NSString *tempo =@"1";
    NSLog(@"url %@", url_ricerca);

    NSLog(@"testa %@", se);
    NSLog(@"coda %@", coda);
    
    NSString *url = [NSString stringWithFormat: @"%@%@%@", se, tempo,coda];
    [_risultato_ricerca loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    NSLog(@"uur1 %@", url);
    url_ricerca = url;
}


- (IBAction)secondo:(id)sender {
    NSRange r = NSMakeRange(0, 63);
    NSString *se = [url_ricerca substringWithRange: r];
    NSString *coda = [url_ricerca substringFromIndex:url_ricerca.length-6];
    NSString *tempo =@"2";
    NSLog(@"url %@", url_ricerca);
    
    NSLog(@"testa %@", se);
    NSLog(@"coda %@", coda);
    
    NSString *url = [NSString stringWithFormat: @"%@%@%@", se, tempo,coda];
    [_risultato_ricerca loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    NSLog(@"uur2 %@", url);
    url_ricerca = url;

}


- (IBAction)terzo:(id)sender {
    NSRange r = NSMakeRange(0, 63);
    NSString *se = [url_ricerca substringWithRange: r];
    NSString *coda = [url_ricerca substringFromIndex:url_ricerca.length-6];
    NSString *tempo =@"3";
    NSLog(@"url %@", url_ricerca);
    
    NSLog(@"testa %@", se);
    NSLog(@"coda %@", coda);
    
    NSString *url = [NSString stringWithFormat: @"%@%@%@", se, tempo,coda];
    [_risultato_ricerca loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    NSLog(@"uurr %@", url);
    url_ricerca = url;

}


- (IBAction)quarto:(id)sender {
    NSRange r = NSMakeRange(0, 63);
    NSString *se = [url_ricerca substringWithRange: r];
    NSString *coda = [url_ricerca substringFromIndex:url_ricerca.length-6];
    NSString *tempo =@"4";
    NSLog(@"url %@", url_ricerca);
    
    NSLog(@"testa %@", se);
    NSLog(@"coda %@", coda);
    
    NSString *url = [NSString stringWithFormat: @"%@%@%@", se, tempo,coda];
    [_risultato_ricerca loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    NSLog(@"uurr %@", url);
    url_ricerca = url;

    
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
