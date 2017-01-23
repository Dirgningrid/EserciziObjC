//
//  ViewController.m
//  ExerciseEvenOdd
//
//  Created by ingrid on 23/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import "ViewController.h"
#define PARI @"PARI"
#define DISPARI @"DISPARI"

@interface ViewController () {
    int _numberChoosed;
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

-(IBAction)numberTypedEditingDidEndOnExit:(UITextField*)sender {
    
    _numberChoosed = [sender.text intValue];
    if(_numberChoosed == 0) {
        [self.answerOnNumberDidType setText: @"Hai digitato lo zero!"];
        NSLog(@"Il numero digitato è lo zero");
    } else if(_numberChoosed % 2 == 0){
        [self.answerOnNumberDidType setText: PARI];
        NSLog(@"Il numero digitato è: %@", PARI);
    } else {
        [self.answerOnNumberDidType setText: DISPARI] ;
        NSLog(@"Il numero digitato è: %@", DISPARI);
    }
}

@end
