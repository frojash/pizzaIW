//
//  VistaQueso.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/19/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var pickerQueso: UIPickerView!
    
    var tamano : String = ""
    var masa : String = ""
    var quesoLocal : String = ""
    let quesos = ["Mozarela", "Cheddar", "Parmesano", "Sin queso"]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVistaIngredientes = segue.destination as! VistaIngredientes
        sigVistaIngredientes.masa = masa
        sigVistaIngredientes.tamano = tamano
        sigVistaIngredientes.queso = quesoLocal

    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return quesos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        quesoLocal = quesos[row]
        return quesos[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerQueso.delegate = self
        pickerQueso.dataSource = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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




