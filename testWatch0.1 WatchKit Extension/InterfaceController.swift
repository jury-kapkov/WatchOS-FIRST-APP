//
//  InterfaceController.swift
//  testWatch0.1
//
//  Created by Admin on 20/09/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
  
    @IBOutlet weak var SettingsButton: WKInterfaceButton!
    @IBOutlet weak var StartButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
//        var temp = SettingsInterfaceController()
//        switch temp.mainColor {
//            case "Blue":
//                StartButton.setBackgroundColor(UIColor(red: 102/255, green: 150/255, blue: 251/255, alpha: 1))
//            default:
//                StartButton.setBackgroundColor(UIColor(red: 1/255, green: 250/255, blue: 51/255, alpha: 1))
//            }
//        var score: Int = 0
//        guard let path = Bundle.main.path(forResource: "Storage", ofType: "json"),
//            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
//                return
//        }
//        
//        do {
//            let json = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
//            score = json["bestEasyScore"] as! Int
//            
//        } catch let error as NSError {
//            print(error)
//        }
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
