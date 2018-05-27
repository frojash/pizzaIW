
//
//  VistaTamano.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/19/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerMasa: UIPickerView!
    var tamano : String = ""
    var masaLocal : String = ""

    let masas = ["Delgada", "Crujiente", "Gruesa"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masas.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        masaLocal = masas[row]
        return masas[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerMasa.delegate = self
        pickerMasa.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let sigVistaQueso = segue.destination as! VistaQueso
        sigVistaQueso.masa = masaLocal
        sigVistaQueso.tamano = tamano

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
