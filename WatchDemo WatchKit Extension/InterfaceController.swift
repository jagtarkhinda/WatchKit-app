//
//  InterfaceController.swift
//  WatchDemo WatchKit Extension
//
//  Created by Jagtar Singh on 2019-06-25.
//  Copyright © 2019 Jagtar Singh. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate  {
    
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    
    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {

        // Play a "click" sound when you get the message
        WKInterfaceDevice().play(.click)
        
        // output a debug message to the terminal
        print("Got a message!")
        
        // update the message with a label
        WLabel2.setText("\(message)")

    }
    
    
    @IBOutlet weak var WLabel1: WKInterfaceLabel!
    
    @IBOutlet weak var WLabel2: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        if WCSession.isSupported() {
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func watchButton() {
          WLabel1.setText("Button pressed!")
    }
}
