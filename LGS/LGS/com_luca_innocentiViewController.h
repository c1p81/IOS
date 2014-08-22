//
//  com_luca_innocentiViewController.h
//  LGS
//
//  Created by Luca Innocenti on 16/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface com_luca_innocentiViewController : UIViewController <UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *spinner;

@property (weak, nonatomic) IBOutlet UIWebView *Vista;

@end
