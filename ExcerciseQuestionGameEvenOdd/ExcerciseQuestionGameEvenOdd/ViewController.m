//
//  ViewController.m
//  ExcerciseQuestionGameEvenOdd
//
//  Created by ingrid on 23/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int _randomNumber;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _randomNumber = [self getRandomNumberBetween:1 to: 100];
    
    [self.randomNumberLabel setText: [NSString stringWithFormat:@"%i", _randomNumber]];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(IBAction)onYesPressed{
    UIAlertController *alertViewController;
    if(_randomNumber % 2 == 0){
        alertViewController = [UIAlertController alertControllerWithTitle:@"Bravo!" message:@"Risposta esatta!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"risposta esatta");
        }];
        
        [alertViewController addAction:okAction];
    } else {
        alertViewController = [UIAlertController alertControllerWithTitle:@"Ritenta" message:@"Risposta sbagliata!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"risposta sbagliata");
        }];
        
        [alertViewController addAction:okAction];
    }
    
    [self presentViewController:alertViewController animated:true completion:nil];
}

-(IBAction)onNoPressed{
    UIAlertController *alertViewController;
    if(_randomNumber % 2 == 0){
         alertViewController = [UIAlertController alertControllerWithTitle:@"Ritenta" message:@"Risposta sbagliata!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"risposta sbagliata");
        }];
        
        [alertViewController addAction:okAction];
    } else {
        alertViewController = [UIAlertController alertControllerWithTitle:@"Bravo!" message:@"Risposta esatta!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            NSLog(@"risposta esatta");
        }];
        
        
        [alertViewController addAction:okAction];
    }
    
    [self presentViewController:alertViewController animated:true completion:nil];
}

@end
