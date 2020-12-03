//
//  American.m
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/2.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

#import "American.h"


static double capacity = 100;

@implementation American

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
    NSLog(@"American cofee machine: Out of beans!!!");
}

- (BOOL)checkCoffeeBagStatus{
    [self setCoffeeBagComponent];
    if(_sugarStatus == YES){
        NSLog(@"American cofee machine: You have coffee bag to make coffee.");
        return YES;
    }else{
        NSLog(@"American cofee machine: You cannot make coffee without the sugar!!!");
        return NO;
    }
}

- (void)setCoffeeBagComponent{
    _sugarStatus = YES;
}

- (void)showWellFunctionalMessage{
    NSLog(@"American cofee machine: Bean percentage is %d percent.", (int)_percentageOfBeans);
    NSLog(@"American cofee machine: You can make coffee.");
}

- (void)showErrorMessage{
    NSLog(@"American cofee machine: You cannot make coffee!!!");
}


@end
