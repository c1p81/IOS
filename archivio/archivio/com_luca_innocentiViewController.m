//
//  com_luca_innocentiViewController.m
//  archivio
//
//  Created by Luca Innocenti on 22/08/14.
//  Copyright (c) 2014 Luca Innocenti. All rights reserved.
//

#import "com_luca_innocentiViewController.h"
#import "archivio2.h"

@interface com_luca_innocentiViewController ()


@end

@implementation com_luca_innocentiViewController
NSArray *_pickersensore;
NSArray *_pickerora;
NSString *ora_stringa;
NSString *sensore_stringa;
NSString *url_ricerca;



- (void)viewDidLoad
{
    [super viewDidLoad];
	_pickerora = @[@"00-06", @"06-12", @"12-18", @"18-24"];
	_pickersensore = @[@"ETN-1", @"ETN-2", @"ETN-3", @"ETN-4",@"MVT-1", @"MVT-2", @"MVT-3", @"MVT-4"];
    self.sensore.dataSource = self;
    self.sensore.delegate = self;
    self.ora.dataSource = self;
    self.ora.delegate = self;
    ora_stringa = @"00-06";
    sensore_stringa = @"ETN-1";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(pickerView.tag == 1)
    {
        return _pickerora.count;
    }
    else if(pickerView.tag == 0)
    {
        return _pickersensore.count;    }
    return _pickerora.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(pickerView.tag == 1)
    {
        return _pickerora[row];    }
    
    else if(pickerView.tag == 0)
    {
        return _pickersensore[row];    }
    
    return _pickerora[row];
}



- (IBAction)ricerca:(id)sender {
    NSLog(@"Ora %@", ora_stringa);
    NSLog(@"Sensore %@", sensore_stringa);
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyyMMdd"];
    NSString *data_stringa = [dateFormatter stringFromDate:_datapick.date];
    NSLog(@"Data %@", data_stringa);
    
    //http://lgs.geo.unifi.it/Etna/DatabaseFIG/20140806/ETN_20140806_2_1.png
    NSString *ur1 = @"http://lgs.geo.unifi.it/Etna/DatabaseFIG/";
    NSString *barra = @"/";
    NSString *under = @"_";
    NSString *estensione = @".png";
    
    NSString *orario;
    if ([ora_stringa isEqualToString:@"00-06"])
    {
        orario = @"1";
    }
    if ([ora_stringa isEqualToString:@"06-12"])
    {
        orario = @"2";
    }
    if ([ora_stringa isEqualToString:@"12-18"])
    {
        orario = @"3";
    }
    if ([ora_stringa isEqualToString:@"18-24"])
    {
        orario = @"4";
    }
    
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
    
    if(pickerView.tag == 1)
    {
        ora_stringa = [_pickerora    objectAtIndex:[self.ora selectedRowInComponent:0]];
        //crea_url();
        
        }
    
    else if(pickerView.tag == 0)
    {
        sensore_stringa = [_pickersensore objectAtIndex:[self.sensore selectedRowInComponent:0]];
        //crea_url();


    }
    NSLog(@"Ora %@", ora_stringa);
    NSLog(@"Sensore %@", sensore_stringa);
    

    
}



@end
