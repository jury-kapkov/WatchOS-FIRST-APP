//
//  EasyLevelInterfaceController.swift
//  testWatch0.1 WatchKit Extension
//
//  Created by Admin on 19/09/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit
import Foundation


class EasyLevelInterfaceController: WKInterfaceController {

    
    @IBOutlet weak var EasyTask: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let levelGenerator = LevelGenerator()
        var task = levelGenerator.GenerateLevel()
        EasyTask.setText(task)
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
