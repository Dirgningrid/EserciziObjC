//
//  ViewController.m
//  ExcerciseOrderedArray
//
//  Created by ingrid on 24/01/17.
//  Copyright © 2017 Ingrid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    NSMutableArray *_myNumberArray;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _myNumberArray = @[].mutableCopy;
    
    for(int i = 0; i <100; i++){
        [_myNumberArray addObject: @(arc4random())];
    }
    
    [self.sumArrayLabel setText:[NSString stringWithFormat:@"%i", [self isSumArrayLabel]]];
    
    [self ascendentingOrder];
    
    [self descendentingSorting];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)getRandomNumberBetween:(int)from to:(int)to {
    return (int)from + arc4random() % (to-from+1);
}

-(int)isSumArrayLabel{
    int sum = 0;
    for(int  i = 0; i < _myNumberArray.count; i ++){
        sum += [_myNumberArray[i] integerValue];
    }
    NSLog(@"La somma dell'Array è: %i", sum);
    return sum;
}

-(void)ascendentingOrder{
    NSArray *sortedArray = [_myNumberArray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if(value1 == value2){
            return NSOrderedSame;
        }
        if (value1<value2){
            return NSOrderedAscending;
        }
        return NSOrderedDescending;
    }];
    
    NSLog(@"In ordine ascendente: \n%@", sortedArray);
}

-(void)descendentingSorting {
    NSArray *sortedArray = [_myNumberArray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *obj1, NSNumber *obj2) {
        int value1 = obj1.intValue;
        int value2 = obj2.intValue;
        
        if(value1 == value2){
            return NSOrderedSame;
        }
        if (value1>value2){
            return NSOrderedAscending;
        }
        return NSOrderedDescending;
    }];
    
    NSLog(@"In ordine discendente: \n%@", sortedArray);
}


@end
