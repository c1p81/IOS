//
//  com_luca_innocentiViewController.h
//  archivio
//
//  Created by Luca Innocenti on 22/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "archivio2.h"

extern NSString *url_ricerca;

@interface com_luca_innocentiViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *sensore;
@property (weak, nonatomic) IBOutlet UIPickerView *ora;
@property (weak, nonatomic) IBOutlet UIDatePicker *datapick;
@end
