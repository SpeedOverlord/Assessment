//
//  main.m
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/2.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "American.h"
#import "Latte.h"
#import "Caramel_Macchiato.h"


void checkCoffeeMachineStatus(American *americanMachine, Latte *latteMachine, Caramel_Macchiato *caramalMacchiatoMachine);
void checkAmericanMachine(American *americanMachine);
void checkLatteMachine(Latte *latteMachine);
void checkCaramel_MacchiatoMachine(Caramel_Macchiato *caramalMacchiatoMachine);
void showDetail(Caramel_Macchiato *caramalMacchiatoMachine);
void catchErrorMessage(NSException *exception);
void endExecutingMessage(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        @try {
            American *americanMachine = [[American alloc]init];
            Latte *latteMachine = [[Latte alloc]init];
            Caramel_Macchiato *caramalMacchiatoMachine = [[Caramel_Macchiato alloc]init];
            checkCoffeeMachineStatus(americanMachine, latteMachine, caramalMacchiatoMachine);
        } @catch (NSException *exception) {
            catchErrorMessage(exception);
        } @finally {
            endExecutingMessage();
        }
    }
    return 0;
}

void checkCoffeeMachineStatus(American *americanMachine, Latte *latteMachine,
                              Caramel_Macchiato *caramalMacchiatoMachine){
    checkAmericanMachine(americanMachine);
    checkLatteMachine(latteMachine);
    checkCaramel_MacchiatoMachine(caramalMacchiatoMachine);
}

void checkAmericanMachine(American *americanMachine){
    if([americanMachine combineCheck]){
        [americanMachine showWellFunctionalMessage];
    }else{
        [americanMachine showErrorMessage];
    }
}

void checkLatteMachine(Latte *latteMachine){
    if([latteMachine combineCheck]){
        [latteMachine showWellFunctionalMessage];
    }else{
        [latteMachine showErrorMessage];
    }
}

void checkCaramel_MacchiatoMachine(Caramel_Macchiato *caramalMacchiatoMachine){
    if([caramalMacchiatoMachine combineCheck]){
        [caramalMacchiatoMachine showWellFunctionalMessage];
    }else{
        [caramalMacchiatoMachine showErrorMessage];
    }
}

void catchErrorMessage(NSException *exception){
    NSLog(@"An exception occured: %@", exception.name);
    NSLog(@"Here is the detail: %@", exception.reason);
}

void endExecutingMessage(){
    NSLog(@"Executing finally block");
}



