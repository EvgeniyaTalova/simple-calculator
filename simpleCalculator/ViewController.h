//
//  ViewController.h
//  simpleCalculator
//
//  Created by Игорь Талов on 11.04.18.
//  Copyright © 2018 Evgeniya Talova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    BOOL operatorPressed;
    BOOL add;
    BOOL multiplication;
    NSString *firstEntry;
    NSString *secondEntry;

}

@property (strong, nonatomic) IBOutlet UILabel *labelOutput;

- (IBAction)clearPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)minusPressed:(id)sender;
- (IBAction)equalsPressed:(id)sender;
- (IBAction)multiplicationPressed:(id)sender;

- (IBAction)numberPressed:(UIButton*)sender;






@end

