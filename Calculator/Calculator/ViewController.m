//
//  ViewController.m
//  Calculator
//
//  Created by Bikas on 11/11/14.
//  Copyright (c) 2014 Bikas. All rights reserved.
//

#import "ViewController.h"
#import "SetManager.h"
#import "OCSetManager.h"
#import "ListSetManager.h"

@interface ViewController ()

    

@end

@implementation ViewController

//setManagerInstance
id setManager;

@synthesize inputField, statusLabel, aLabel, bLabel;


//start OC SetManager
- (IBAction)startOCManager:(id)sender {
    
    @autoreleasepool {
        setManager = [[OCSetManager alloc]init];
    }
    statusLabel.text = @"OC SetManager Started";
    [self displayAB];
    
}

//starts List SetManager
- (IBAction)startListManager:(id)sender {
    
    @autoreleasepool {
        setManager = [[ListSetManager alloc]init];
    }
    statusLabel.text = @"List SetManager Started";
    [self displayAB];
}


//by default enabling OCSetManagerMode
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //setting OCSetManager as Default
    setManager = [[OCSetManager alloc]init];
    statusLabel.text = @"OC SetManager Started by Default";
    
    self.inputField.delegate = self;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.inputField resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
   
    if(textField){
        [textField resignFirstResponder];
    }
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//adding the input numbet to A
- (IBAction)add:(id)sender {
    
    if([self isValidInput] == false)
    {
        return;
    }
    
    int input = [self.inputField.text intValue];
    int status = [setManager addElement: input];
    if(status == 1)
        statusLabel.text = [NSString stringWithFormat:@"%d successfully added to A", input];
    else if(status == 2)
        statusLabel.text = [NSString stringWithFormat:@"Duplicate value %d found in A", input];
    
    [self displayAB];
}


//switching A and B
- (IBAction)switchAB:(id)sender {
    [setManager swap];
    statusLabel.text = [NSString stringWithFormat:@"Set A and B successfully switched"];
    [self displayAB];
}

//removing the input value from A
- (IBAction)remove:(id)sender {
    if([self isValidInput] == false)
    {
        return;
    }
    
    int input = [self.inputField.text intValue];
    int status = [setManager removeElement: input];
    if(status == 1)
        statusLabel.text = [NSString stringWithFormat:@"%d successfully removed from A", input];
    else if(status == -1)
        statusLabel.text = [NSString stringWithFormat:@"No such value %d found in A", input];
    
    [self displayAB];
}

//get the value from the given index
- (IBAction)indexedAccess:(id)sender {
    
    if([self isValidInput] == false)
    {
        return;
    }
    
    int input = [self.inputField.text intValue];
    int element = [setManager elementAt: input];
    if(element == -1)
        statusLabel.text = [NSString stringWithFormat:@"Invalid index: %d", input];
    else
        statusLabel.text = [NSString stringWithFormat:@"Element in A at index: %d is: %d", input, element];
    
    [self displayAB];

}

//checks if given input is member of A
- (IBAction)membershipTest:(id)sender {
    if([self isValidInput] == false)
    {
        return;
    }
    
    int input = [self.inputField.text intValue];
    bool isElement = [setManager isMember:input];
    if(isElement)
        statusLabel.text = [NSString stringWithFormat:@"%d is a member of A", input];
    else
        statusLabel.text = [NSString stringWithFormat:@"%d is not a member of A", input];
    
    [self displayAB];
}

//clears elements of A
- (IBAction)clear:(id)sender {
    [setManager clear];
    statusLabel.text = [NSString stringWithFormat:@"Set A is cleared"];
    [self displayAB];
}

//save set A to B
- (IBAction)save:(id)sender {
    [setManager save];
    statusLabel.text = [NSString stringWithFormat:@"Elements from A saved to B"];
    [self displayAB];
}

//shows the size of A
- (IBAction)Size:(id)sender {
    int sz = [setManager sizeA];
    statusLabel.text = [NSString stringWithFormat:@"Size of A is: %d", sz];
    [self displayAB];
}

//Union of set A and B
- (IBAction)Union:(id)sender {
    [setManager Union];
    statusLabel.text = [NSString stringWithFormat:@"Union of A and B successful"];
    [self displayAB];
}

//cheching is the input in valid
- (bool) isValidInput
{
    if (inputField.text && inputField.text.length > 0)
    {
        if(isNumericI (inputField.text) == NO)
        {
            //statusLabel.text = @"Invalid Input. Please enter only interger";
            statusLabel.text = [NSString stringWithFormat:@"Invalid Input: Only Integer is supported"];
            return false;
        }
    }
    else{
        statusLabel.text = [NSString stringWithFormat:@"Please enter an Integer"];
        return false;
    }
    return true;
}

BOOL isNumericI(NSString *s)
{
    NSUInteger len = [s length];
    NSUInteger i;
    BOOL status = NO;
    
    for(i=0; i < len; i++)
    {
        unichar singlechar = [s characterAtIndex: i];
        if ( (singlechar == ' ') && (!status) )
        {
            continue;
        }
        if ( ( singlechar == '+' ||
              singlechar == '-' ) && (!status) ) { status=YES; continue; }
        if ( ( singlechar >= '0' ) &&
            ( singlechar <= '9' ) )
        {
            status = YES;
        } else {
            return NO;
        }
    }
    return (i == len) && status;
}

//display A and B
- (void) displayAB{
    
    NSString *aText = [@"A: " stringByAppendingString: [setManager displayX]];
    NSString *bText = [@"B: " stringByAppendingString: [setManager displayY]];
    aLabel.text = aText;
    bLabel.text = bText;
    
}

@end
