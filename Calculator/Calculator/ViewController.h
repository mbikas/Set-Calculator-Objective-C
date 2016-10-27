//
//  ViewController.h
//  Calculator
//
//  Created by Bikas on 11/11/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SetManager.h"




@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UILabel *statusLabel;
@property (weak, nonatomic) IBOutlet UILabel *aLabel;
@property (weak, nonatomic) IBOutlet UILabel *bLabel;

- (IBAction)startOCManager:(id)sender;
- (IBAction)startListManager:(id)sender;

- (IBAction)add:(id)sender;
- (IBAction)switchAB:(id)sender;

- (IBAction)remove:(id)sender;
- (IBAction)indexedAccess:(id)sender;
- (IBAction)membershipTest:(id)sender;
- (IBAction)clear:(id)sender;
- (IBAction)save:(id)sender;
- (IBAction)Size:(id)sender;
- (IBAction)Union:(id)sender;

- (void) displayAB;
- (bool) isValidInput;

@end
