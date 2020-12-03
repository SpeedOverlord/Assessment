//
//  coffeeMachine_Status.h
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/3.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

@protocol CoffeeMachine_Status <NSObject>

- (BOOL)checkbeanIsEmpty:(double) amount;
- (double)checkBeansAmount;
- (BOOL)checkCoffeeBagStatus;
- (BOOL)combineCheck;
- (void)showWellFunctionalMessage;
- (void)showErrorMessage;

@end
