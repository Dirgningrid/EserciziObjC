//
//  ViewController.h
//  ExcerciseQuestionGameEvenOdd
//
//  Created by ingrid on 23/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *randomNumberLabel;

-(IBAction)onYesPressed;

-(IBAction)onNoPressed;

@end

