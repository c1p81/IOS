//
//  ricerca.h
//  LGS
//
//  Created by Luca Innocenti on 25/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "archivio.h"
extern NSString *url_ricerca;


@interface ricerca : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIDatePicker *datap;
@property (weak, nonatomic) IBOutlet UIPickerView *sensore;

@end
