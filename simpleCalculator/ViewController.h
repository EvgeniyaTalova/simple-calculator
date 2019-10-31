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
    BOOL devide;
    BOOL substract;
    NSString *firstEntry;
    NSString *secondEntry;
}

@end

