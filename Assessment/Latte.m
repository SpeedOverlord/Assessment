//
//  Latte.m
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/2.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

#import "Latte.h"

static double capacity = 100;

@implementation Latte

- (BOOL)combineCheck{
    if([self checkbeanIsEmpty:[self checkBeansAmount]] && [self checkCoffeeBagStatus]){
        return YES;
    }else{
        return NO;
    }
}

- (BOOL)checkbeanIsEmpty:(double) amount{
    int zero = 0;
    if(amount == zero){
        [self outOfBeansSendMessage];
        [self outOfBeansAlerting];
        return NO;
    }else{
        return YES;
    }
}

- (double)checkBeansAmount{
    double beansAmount = 20;
    [self calculatePercentage:beansAmount];
    return beansAmount;
}

- (void)calculatePercentage:(double) amount{
    _percentageOfBeans = (amount / capacity)*100;
}

- (void)outOfBeansSendMessage{
    NSLog(@"Latte cofee machine: Out of beans!!!");
}

- (void)outOfBeansAlerting{
    NSLog(@"BEEP BEEP BEEP");
}

- (BOOL)checkCoffeeBagStatus{
    [self setCoffeeBagComponent];
    if(_sugarStatus && _milkStatus){
        NSLog(@"Latte cofee machine: You have coffee bag to make coffee.");
        return YES;
    }else if(_sugarStatus && !_milkStatus){
        NSLog(@"Latte cofee machine: You need milk make coffee!!!");
        return NO;
    }else if(!_sugarStatus && _milkStatus){
        NSLog(@"Latte cofee machine: You need sugar to make coffee!!!");
        return NO;
    }else if(!_sugarStatus && !_milkStatus){
        NSLog(@"Latte cofee machine: You need sugar and milk to make coffee!!!");
        return NO;
    }else{
        NSLog(@"Latte cofee machine: Unknown error!!!");
        return NO;
    }
}

- (void)setCoffeeBagComponent{
    _sugarStatus = YES;
    _milkStatus = YES;
}

- (void)showWellFunctionalMessage{
    NSLog(@"Latte cofee machine: Bean percentage is %d percent.", (int)_percentageOfBeans);
    NSLog(@"Latte cofee machine: You can make coffee.");
}

- (void)showErrorMessage{
    NSLog(@"Latte cofee machine: You cannot make coffee!!!");
}

@end
