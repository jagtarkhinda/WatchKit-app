//
//  ViewController.swift
//  WatchDemo
//
//  Created by Jagtar Singh on 2019-06-25.
//  Copyright © 2019 Jagtar Singh. All rights reserved.
//

import UIKit
import WatchConnectivity


class ViewController: UIViewController, WCSessionDelegate {
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
        
    }
    
    func sessionDidBecomeInactive(_ session: WCSession) {
        
    }
    
    func sessionDidDeactivate(_ session: WCSession) {
        
    }
    
    
    
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if (WCSession.isSupported()) {
            myLabel.text = "Yes it is"
            let session = WCSession.default
            session.delegate = self
            session.activate()
        }
        else{
            myLabel.text = "Phone Does not support SESSION"
        }

    }
    
    
    
    @IBAction func Send(_ sender: Any) {
        
        if (WCSession.default.isReachable) {
            myLabel2.text = "PHONE: Phone found the watch"
            // construct the message you want to send
            // the message is in dictionary
            let message = [
                "name": "jenelle"
            ]
            
            /* Same as doing this in Javascript
             var person = {
             "name":"jenelle",
             "program":"madt"
             }
             */
            
            // send the message to the watch
            WCSession.default.sendMessage(message, replyHandler: nil)
            
            print("PHONE: Sent the data!")
            self.myLabel.text = "Message Sent"
        }
        else {
            print("PHONE: Cannot find the watch")
            self.myLabel.text = "ERROR: Cannot find watch"
        }
    }
    

}

