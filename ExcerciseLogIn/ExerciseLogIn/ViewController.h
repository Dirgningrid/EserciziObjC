//
//  ViewController.h
//  ExerciseLogIn
//
//  Created by ingrid on 23/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, weak) IBOutlet UILabel *nameTypedLabel;

-(IBAction)logInPressed:(id)sender;

-(IBAction)typeUsernameEditingDidEndOnExit:(id)sender;

-(IBAction)typePassword:(id)sender;

@end

