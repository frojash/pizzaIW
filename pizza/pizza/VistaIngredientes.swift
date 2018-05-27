//
//  VistaIngredientes.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/19/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPimiento: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swHongos: UISwitch!
    @IBOutlet weak var swSalchicha: UISwitch!
    @IBOutlet weak var swAnchoa: UISwitch!
    @IBOutlet weak var swPina: UISwitch!
    @IBOutlet weak var swSalami: UISwitch!
    @IBOutlet weak var swPeperoni: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
    
    var ingredientes: [String] = []
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func swJamon(_ sender: UISwitch) {
        if swJamon.isOn {
            ingredientes.append("Jamón")
        } else {
            let i = ingredientes.index(of: "Jamón")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPimiento(_ sender: UISwitch) {
        if swPimiento.isOn {
            ingredientes.append("Pimiento")
        } else {
            let i = ingredientes.index(of: "Pimiento")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swCebolla(_ sender: UISwitch) {
        if swCebolla.isOn {
            ingredientes.append("Cebolla")
        } else {
            let i = ingredientes.index(of: "Cebolla")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swHongos(_ sender: UISwitch) {
        if swHongos.isOn {
            ingredientes.append("Hongos")
        } else {
            let i = ingredientes.index(of: "Hongos")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swSalchicha(_ sender: UISwitch) {
        if swSalchicha.isOn {
            ingredientes.append("Salchicha")
        } else {
            let i = ingredientes.index(of: "Salchicha")
            ingredientes.remove(at: i!)
        }
    }
    
    
    @IBAction func swAnchoa(_ sender: UISwitch) {
        if swAnchoa.isOn {
            ingredientes.append("Anchoa")
        } else {
            let i = ingredientes.index(of: "Anchoa")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPina(_ sender: UISwitch) {
        if swPina.isOn {
            ingredientes.append("Piña")
        } else {
            let i = ingredientes.index(of: "Piña")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swSalami(_ sender: UISwitch) {
        if swSalami.isOn {
            ingredientes.append("Salami")
        } else {
            let i = ingredientes.index(of: "Salami")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPeperoni(_ sender: UISwitch) {
        if swPeperoni.isOn {
            ingredientes.append("Pepperoni")
        } else {
            let i = ingredientes.index(of: "Pepperoni")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBAction func swPavo(_ sender: UISwitch) {
        if swPavo.isOn {
            ingredientes.append("Pavo")
        } else {
            let i = ingredientes.index(of: "Pavo")
            ingredientes.remove(at: i!)
        }
    }
    
    @IBOutlet weak var listaSwitch: UIStackView!
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (ingredientes.count > 0 && ingredientes.count < 6){
            return true;
        }else{
            return false;
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVistaConfirmacion = segue.destination as! VistaConfirmacion
        var mensaje : String = "Tamaño:" +  tamano + "\n \n" + "Masa: " +  masa + "\n \n" + "Queso: " + queso + "\n \n" + "Ingredientes: \n \n"
       
        var cont : Int = 0
        for ingrediente in ingredientes {
            cont = cont + 1
            mensaje += "\(cont)" + "- " + ingrediente + "\n"
        }
        sigVistaConfirmacion.mensaje = mensaje
    }
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
