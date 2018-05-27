//
//  VistaIngredientesIW.swift
//  pizzaWatch Extension
//
//  Created by Fernando Rojas Hidalgo on 5/27/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import WatchKit
import Foundation


class VistaIngredientesIW: WKInterfaceController {
    @IBOutlet var swJamon: WKInterfaceSwitch!
    @IBOutlet var swPimiento: WKInterfaceSwitch!
    @IBOutlet var swCebolla: WKInterfaceSwitch!
    @IBOutlet var swHongos: WKInterfaceSwitch!
    @IBOutlet var swSalchicha: WKInterfaceSwitch!
    @IBOutlet var swAnchoa: WKInterfaceSwitch!
    @IBOutlet var swPina: WKInterfaceSwitch!
    @IBOutlet var swSalami: WKInterfaceSwitch!
    @IBOutlet var swPeperoni: WKInterfaceSwitch!
    @IBOutlet var swPavo: WKInterfaceSwitch!
    
    var ingredientes: [String] = []
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""

    @IBAction func swJamonChange(_ value: Bool) {
        if value {
            ingredientes.append("Jamón")
        } else {
            let i = ingredientes.index(of: "Jamón")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPimientoChange(_ value: Bool) {
        if value {
            ingredientes.append("Pimiento")
        } else {
            let i = ingredientes.index(of: "Pimiento")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swCebollaChange(_ value: Bool) {
        if value {
            ingredientes.append("Cebolla")
        } else {
            let i = ingredientes.index(of: "Cebolla")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swHongosChange(_ value: Bool) {
        if value {
            ingredientes.append("Hongos")
        } else {
            let i = ingredientes.index(of: "Hongos")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swSalchicha(_ value: Bool) {
        if value {
            ingredientes.append("Salchicha")
        } else {
            let i = ingredientes.index(of: "Salchicha")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swAnchoaChange(_ value: Bool) {
        if value {
            ingredientes.append("Anchoa")
        } else {
            let i = ingredientes.index(of: "Anchoa")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPinaChange(_ value: Bool) {
        if value {
            ingredientes.append("Piña")
        } else {
            let i = ingredientes.index(of: "Piña")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swSalamiChange(_ value: Bool) {
        if value {
            ingredientes.append("Salami")
        } else {
            let i = ingredientes.index(of: "Salami")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPeperoni(_ value: Bool) {
        if value {
            ingredientes.append("Pepperoni")
        } else {
            let i = ingredientes.index(of: "Pepperoni")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPavoChange(_ value: Bool) {
        if value {
            ingredientes.append("Pavo")
        } else {
            let i = ingredientes.index(of: "Pavo")
            ingredientes.remove(at: i!)
        }
        
    }
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let c=context as! Valores
        self.tamano = c.tamano
        self.masa = c.masa
        self.queso = c.queso
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    func ApruebaIngredientes() -> Bool {
        if (ingredientes.count > 0 && ingredientes.count < 6){
            return true;
        }else{
            return false;
        }
    }

    @IBAction func siguienteClick() {
        if (ApruebaIngredientes()){
            
            var mensaje : String = "Tamaño:" +  self.tamano + ". " + "Masa: " +  self.masa + ". " + "Queso: " + self.queso + ". " + "Ingredientes: "
            
            var cont : Int = 0
            for ingrediente in ingredientes {
                cont = cont + 1
                mensaje += "\(cont)" + "- " + ingrediente + ". \n"
            }

            let valorContexto = Valores(men:mensaje)
            pushController(withName: "idValorConfirmacion", context: valorContexto)

        }
        
    }
}
