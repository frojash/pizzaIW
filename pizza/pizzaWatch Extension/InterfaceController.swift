//
//  InterfaceController.swift
//  pizzaWatch Extension
//
//  Created by Fernando Rojas Hidalgo on 5/26/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {
    
    @IBOutlet var pTamano: WKInterfacePicker!
    var tamanoElegido = "Pequeña"
    
    
    @IBAction func pickerSelectedItemChanged(_ value: Int) {
        tamanoElegido = tamanos[value].0
    }
    
    @IBAction func GuardarTamano() {
        let valorContexto = Valores(tam:tamanoElegido)
        print(valorContexto.tamano)
        pushController(withName: "IdValorMasa", context: valorContexto)
    }
    
    let tamanos : [(String, String)] = [("Pequeña","1"),("Mediana","2"),("Grande","3")]
     

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = tamanos.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        pTamano.setItems(pickerItems)
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    

}
