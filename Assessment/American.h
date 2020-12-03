//
//  American.h
//  Assessment
//
//  Created by 陳彥廷21632 on 2020/12/2.
//  Copyright © 2020 陳彥廷21632. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OutOfBeansMessage.h"
#import "CoffeeMachine_Actions.h"
#import "CoffeeMachine_Status.h"

NS_ASSUME_NONNULL_BEGIN

@interface American : NSObject <OutOfBeansMessage, CoffeeMachine_Actions, CoffeeMachine_Status>

@property (readonly) double percentageOfBeans;
@property (readonly) BOOL sugarStatus;

@end

NS_ASSUME_NONNULL_END
