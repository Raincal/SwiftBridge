//
//  CalendarManagerBridge.m
//  SwiftBridge
//
//  Created by Raincal on 16/1/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

//#import <Foundation/Foundation.h>

#import "RCTBridgeModule.h"

@interface RCT_EXTERN_MODULE(CalendarManager, NSObject)

RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date callback: (RCTResponseSenderBlock)callback)

@end
