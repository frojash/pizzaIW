//
//  VistaQuesoIW.swift
//  pizzaWatch Extension
//
//  Created by Fernando Rojas Hidalgo on 5/27/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import WatchKit
import Foundation


class VistaQuesoIW: WKInterfaceController {

    var tamano : String = ""
    var masa : String = ""
    var quesoLocal : String = "Mozarela"
    
    @IBOutlet var pQueso: WKInterfacePicker!
    let quesos : [(String, String)] = [("Mozarela","1"),("Cheddar","2"),("Parmesano","3"), ("Sin queso","3")]

    @IBAction func pickerSelectedItemChanged(_ value: Int) {
        quesoLocal =  quesos[value].0

    }
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        let c=context as! Valores
        tamano = c.tamano
        masa = c.masa
    }

    @IBAction func GuardarQueso() {
        
        let valorContexto = Valores(tam:tamano, mas:masa, que:quesoLocal)
        pushController(withName: "idValorIngredientes", context: valorContexto)

        
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = quesos.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        pQueso.setItems(pickerItems)

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
