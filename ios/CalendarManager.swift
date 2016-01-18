//
//  CalendarManager.swift
//  SwiftBridge
//
//  Created by Raincal on 16/1/18.
//  Copyright © 2016年 Facebook. All rights reserved.
//

import Foundation

@objc(CalendarManager)
class CalendarManager: NSObject {
  
  var bridge: RCTBridge!
  
  @objc func addEvent(name: String, location: String, date: NSNumber, callback: (NSObject) -> ()) -> Void {
    
    NSLog("Bridge: %@", self.bridge)
    
    NSLog("%@ %@ %@", name, location, date)
    
    let ret = [
      "name": name,
      "location": location,
      "date": date
    ]
    
    callback([ret])
    
    self.bridge.eventDispatcher.sendAppEventWithName("EventReminder", body: ret)
  }
  
  @objc func constantsToExport() -> NSObject {
    return [
      "x": 1,
      "y": 2,
      "z": "Arbitrary string"
    ]
  }
  
}