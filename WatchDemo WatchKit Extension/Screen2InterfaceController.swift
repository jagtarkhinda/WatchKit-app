//
//  Screen2InterfaceController.swift
//  WatchDemo WatchKit Extension
//
//  Created by Jagtar Singh on 2019-06-25.
//  Copyright © 2019 Jagtar Singh. All rights reserved.
//


import WatchKit
import Foundation


class Screen2InterfaceController: WKInterfaceController {
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        print("WATCH: I AM ON SCREEN #2")
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}
