//
//  ricerca.m
//  LGS
//
//  Created by Luca Innocenti on 25/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "ricerca.h"

@interface ricerca ()

@end

@implementation ricerca
NSArray *_pickersensore;
NSString *sensore_stringa;
NSString *ora_stringa;
NSString *url_ricerca;


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
    _pickersensore = @[@"ETN-1",@"ETN-2",@"ETN-3",@"MVT-1",@"MVT-2",@"MVT-3"];
    self.sensore.dataSource = self;
    self.sensore.delegate = self;
    ora_stringa = @"00-06";
    sensore_stringa = @"ETN-1";
   }

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickersensore.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return _pickersensore[row];
}

- (IBAction)ricerca:(id)sender {
    // formato dati
    // ETN_20140812_X_Y.png
    // XX e' l'ora (da 1 "00-06" a 4 "18-24)
    // YY e' il sensore
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    NSString *data_stringa = [dateFormatter stringFromDate:_datap.date];
    NSLog(@"Data %@", data_stringa);
    
    NSString *ur1 = @"http://lgs.geo.unifi.it/Etna/DatabaseFIG/";
    NSString *barra = @"/";
    NSString *under = @"_";
    NSString *estensione = @".png";
    NSString *orario = @"1";
    
    //sottostringa per estrarre la posizione
    NSRange r = NSMakeRange(0, 3);
    NSString *stazione = [sensore_stringa substringWithRange: r];
    NSLog(@"stazione %@", stazione);
    
    //sottostringa per estrarre la posizione
    NSRange r2 = NSMakeRange(4, 1);
    NSString *se = [sensore_stringa substringWithRange: r2];
    NSLog(@"sensore %@", se);
    
    NSString *url = [NSString stringWithFormat: @"%@%@%@%@%@%@%@%@%@%@%@", ur1, data_stringa,barra,stazione,under,data_stringa,under,orario,under,se,estensione];
    //passa la variabile all'altro viewcontroller
    
    url_ricerca = url;
    NSLog(@"URL2 %@", url_ricerca);

    [self performSegueWithIdentifier: @"risultato" sender: self];

}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    sensore_stringa = [_pickersensore objectAtIndex:[self.sensore selectedRowInComponent:0]];
    NSLog(@"Sensore %@", sensore_stringa);
    
    
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
