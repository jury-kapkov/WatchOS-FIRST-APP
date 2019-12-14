//
//  SettingsInterfaceController.swift
//  testWatch0.1 WatchKit Extension
//
//  Created by Admin on 19/09/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit
import Foundation


class SettingsInterfaceController: WKInterfaceController {

    @IBOutlet weak var languagePicker: WKInterfacePicker!
    @IBOutlet weak var colorPicker: WKInterfacePicker!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        var pickerLangItems:[WKPickerItem] = []
        let titlesLang:[String] = ["Eanglish","Russion"]
        for item in titlesLang{
            let pickerItem = WKPickerItem()
            pickerItem.title = item
            pickerLangItems += [pickerItem]
        }
        languagePicker.setItems(pickerLangItems);
        
        var pickerColorItems:[WKPickerItem] = []
        let titlesColor:[String] = ["Blue","Yellow", "Green"]
        for item in titlesColor{
            let pickerItem = WKPickerItem()
            pickerItem.title = item
            pickerColorItems += [pickerItem]
        }
        colorPicker.setItems(pickerColorItems);
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
