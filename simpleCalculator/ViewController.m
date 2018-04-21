//
//  ViewController.m
//  simpleCalculator
//
//  Created by Игорь Талов on 11.04.18.
//  Copyright © 2018 Evgeniya Talova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)clearPressed:(id)sender {
    operatorPressed = FALSE;
    _labelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)addPressed:(id)sender {
    add = TRUE;
    operatorPressed = TRUE;
}

- (IBAction)minusPressed:(id)sender {
    add = FALSE;
    operatorPressed = TRUE;
}

- (IBAction)equalsPressed:(id)sender {
    if (!add) {
        NSInteger outputNum = [firstEntry intValue] - [secondEntry intValue];
        _labelOutput.text = [NSString stringWithFormat: @"%li",(long)outputNum];
    }
    else if (add){
        NSInteger outputNum = [firstEntry intValue] + [secondEntry intValue];
        _labelOutput.text = [NSString stringWithFormat: @"%li",(long)outputNum];
    } else
    
    operatorPressed = FALSE;
    firstEntry = NULL;
    secondEntry = NULL;
}
- (IBAction)multiplicationPressed:(id)sender {
    multiplication = YES;
    add = NO;
    operatorPressed = YES;
  
}

- (IBAction)numberPressed:(UIButton*)sender;{
    int tag = (int) sender.tag;
    
    if (operatorPressed == FALSE) {
        if (firstEntry == NULL) {
            firstEntry = [NSString stringWithFormat: @"%i",tag];
            _labelOutput.text = firstEntry;
        }
        else {
            firstEntry = [NSString stringWithFormat: @"%@%i",firstEntry,tag];
            _labelOutput.text = firstEntry;
        }
    }
    else {
        if (secondEntry == NULL) {
            secondEntry = [NSString stringWithFormat:@"%i",tag];
            _labelOutput.text = secondEntry;
        }
        else {
            secondEntry = [NSString stringWithFormat:@"%@%i",secondEntry,tag];
            _labelOutput.text = secondEntry;
        }
    }
}

@end
