//
//  ViewController.m
//  ExcerciseOrderedArray
//
//  Created by ingrid on 24/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSArray *_myNumberArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myNumberArray = init();
    
    for(int i = 0; i <100; i++){
        
        _myNumberArray[i]  = [self getRandomNumberBetween:0 to:100];
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(NSArray *) createRandomNumberArray {
    

    
    
    return _myNumberArray;
}


@end
