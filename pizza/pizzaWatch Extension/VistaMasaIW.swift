//
//  VistaMasaIW.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/27/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import WatchKit
import Foundation


class VistaMasaIW: WKInterfaceController {
    
    var tamano : String = ""
    var masaLocal : String = "Delgada"
    
    let masas : [(String, String)] = [("Delgada","1"),("Crujiente","2"),("Gruesa","3")]
    
    @IBOutlet var pMasa: WKInterfacePicker!
    
    @IBAction func pickerSelectedItemChanged(_ value: Int) {
        masaLocal =  masas[value].0
    }
    
    @IBAction func GuardarMasa() {
        let valorContexto = Valores(tam:tamano, mas:masaLocal)
        pushController(withName: "idValorQueso", context: valorContexto)
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c=context as! Valores
        tamano = c.tamano
        print("Aqui" + c.tamano)
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = masas.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        pMasa.setItems(pickerItems)

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
