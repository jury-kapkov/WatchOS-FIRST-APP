//
//  EndEasyGameInterfaceController.swift
//  testWatch0.1
//
//  Created by Admin on 14/12/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit
import Foundation


class EndEasyGameInterfaceController: WKInterfaceController {

    @IBOutlet weak var ReplayButton: WKInterfaceButton!
    @IBOutlet weak var HomeButton: WKInterfaceButton!
    
    @IBOutlet weak var CurrentScore: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let text = "Your score " + ((context as? String)!)
        CurrentScore.setText(text)
        
//        HomeButton.setBackgroundImage(UIImage(named: "Complication/HomeButton"))
        ReplayButton.setBackgroundColor(UIColor(red: 102/255, green: 250/255, blue: 51/255, alpha: 1))
        HomeButton.setBackgroundColor(UIColor(red: 102/255, green: 100/255, blue: 251/255, alpha: 0.5))
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
