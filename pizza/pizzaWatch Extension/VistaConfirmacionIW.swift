//
//  VistaConfirmacionIW.swift
//  pizzaWatch Extension
//
//  Created by Fernando Rojas Hidalgo on 5/27/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import WatchKit
import Foundation


class VistaConfirmacionIW: WKInterfaceController {
    @IBOutlet var lblMensaje: WKInterfaceLabel!
    

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let c=context as! Valores
        lblMensaje.setText(c.mensaje)
        
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func EncargarPizza() {
        WKInterfaceController.reloadRootControllers(
            withNames: ["idValorGracias"], contexts: []
        )
        
    }
}

