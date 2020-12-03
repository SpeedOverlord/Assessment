//
//  Latte.h
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/2.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OutOfBeansMessage.h"
#import "CoffeeMachine_Actions.h"
#import "CoffeeMachine_Status.h"
#import "OutOfBeansAlert.h"

NS_ASSUME_NONNULL_BEGIN

@interface Latte : NSObject <OutOfBeansMessage, CoffeeMachine_Actions, CoffeeMachine_Status, OutOfBeansAlert>

@property (readonly) double percentageOfBeans;
@property (readonly) BOOL sugarStatus;
@property (readonly) BOOL milkStatus;







@end

NS_ASSUME_NONNULL_END
