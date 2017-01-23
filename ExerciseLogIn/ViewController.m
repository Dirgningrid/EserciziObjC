//
//  ViewController.m
//  ExerciseLogIn
//
//  Created by ingrid on 23/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSString *_myLabel;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)typeUsernameEditingDidEndOnExit:(UITextField*)sender {
    [self.nameTypedLabel setText: _myLabel = sender.text];
}

-(IBAction)typePassword:(id)sender {
    
}

-(IBAction)logInPressed:(id)sender {
    NSLog(@"Il nome inserito è: %@", _myLabel);
}

@end
