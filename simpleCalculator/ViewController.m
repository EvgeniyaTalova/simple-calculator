//
//  ViewController.m
//  simpleCalculator
//
//  Created by Игорь Талов on 11.04.18.
//  Copyright © 2018 Evgeniya Talova. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *labelOutput;

- (IBAction)clearPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
- (IBAction)equalsPressed:(id)sender;
- (IBAction)multiplicationPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    operatorPressed = NO;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clearPressed:(id)sender {
    operatorPressed = NO;
    _labelOutput.text = NULL;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)addPressed:(id)sender {
    add = YES;
    operatorPressed = YES;
    multiplication = NO;
    devide = NO;
    substract = NO;
}

- (IBAction)minusPressed:(id)sender {
    add = NO;
    substract = YES;
    multiplication = NO;
    devide = NO;
    operatorPressed = TRUE;
}

- (IBAction)equalsPressed:(id)sender {
    NSInteger outputNum;
    
    if (!add && !devide && !multiplication && substract) {
         outputNum = [firstEntry intValue] - [secondEntry intValue];
        _labelOutput.text = [NSString stringWithFormat: @"%li",(long)outputNum];
    }
    else if (add && !devide && !multiplication && !substract){
         outputNum = [firstEntry intValue] + [secondEntry intValue];
        _labelOutput.text = [NSString stringWithFormat: @"%li",(long)outputNum];
    } else if (!add && !devide && multiplication && !substract) {
         outputNum = [firstEntry intValue] * [secondEntry intValue];
        _labelOutput.text = [NSString stringWithFormat:@"%li", (long)outputNum];
    } else {
         outputNum = [firstEntry intValue] / [secondEntry intValue];
        _labelOutput.text = [NSString stringWithFormat:@"%li", (long)outputNum];
    }
    
    operatorPressed = NO;
    firstEntry = [NSString stringWithFormat:@"%li", (long)outputNum];
    secondEntry = NULL;
}

- (IBAction)multiplicationPressed:(id)sender {
    multiplication = YES;
    add = NO;
    operatorPressed = YES;
    substract = NO;
    devide = NO;
}

- (IBAction)dividePressed:(UIButton *)sender {
    devide = YES;
    operatorPressed = YES;
    add = NO;
    multiplication = NO;
    substract = NO;
}

- (IBAction)persentPressed:(UIButton *)sender { }

- (IBAction)numberPressed:(UIButton*)sender;{
    NSInteger tag = sender.tag;
    
    if (operatorPressed == NO) {
        if (firstEntry == NULL) {
            firstEntry = [NSString stringWithFormat: @"%li",(long)tag];
            _labelOutput.text = firstEntry;
        }
        else {
            firstEntry = [NSString stringWithFormat: @"%@%li",firstEntry,(long)tag];
            _labelOutput.text = firstEntry;
        }
    }
    else {
        if (secondEntry == NULL) {
            secondEntry = [NSString stringWithFormat:@"%li",(long)tag];
            _labelOutput.text = secondEntry;
        }
        else {
            secondEntry = [NSString stringWithFormat:@"%@%li",secondEntry,(long)tag];
            _labelOutput.text = secondEntry;
        }
    }
}

@end
