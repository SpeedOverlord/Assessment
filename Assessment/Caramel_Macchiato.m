//
//  Caramel_Macchiato.m
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/2.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

#import "Caramel_Macchiato.h"

static double capacity = 100;

@implementation Caramel_Macchiato

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
    double beansAmount = 5;
    [self calculatePercentage:beansAmount];
    return beansAmount;
}

- (void)calculatePercentage:(double) amount{
    _percentageOfBeans = (amount / capacity)*100;
}

- (void)outOfBeansSendMessage{
    NSLog(@"Caramel_Macchiato cofee machine: Out of beans!!!");
}

- (void)outOfBeansAlerting{
    NSLog(@"BEEP BEEP BEEP");
}

- (BOOL)checkCoffeeBagStatus{
    [self setCoffeeBagComponent];
    if(_caramelStatus && _milkStatus){
        NSLog(@"Caramel_Macchiato cofee machine: You have coffee bag to make coffee.");
        return YES;
    }else if(_caramelStatus && !_milkStatus){
        NSLog(@"Caramel_Macchiato cofee machine: You need milk make coffee!!!");
        return NO;
    }else if(!_caramelStatus && _milkStatus){
        NSLog(@"Caramel_Macchiato cofee machine: You need caramel to make coffee!!!");
        return NO;
    }else if(!_caramelStatus && !_milkStatus){
        NSLog(@"Caramel_Macchiato cofee machine: You need caramel and milk to make coffee!!!");
        return NO;
    }else{
        NSLog(@"Caramel_Macchiato cofee machine: Unknown error!!!");
        return NO;
    }
}

- (void)setCoffeeBagComponent{
    _caramelStatus = YES;
    _milkStatus = YES;
}

- (void)showWellFunctionalMessage{
    NSLog(@"Caramel_Macchiato cofee machine: Bean percentage is %d percent.", (int)_percentageOfBeans);
    NSLog(@"Caramel_Macchiato cofee machine: You can make coffee.");
}

- (void)showErrorMessage{
    NSLog(@"Caramel_Macchiato cofee machine: You cannot make coffee!!!");
}

@end
