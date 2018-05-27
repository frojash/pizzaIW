//
//  ViewController.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/19/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    var tamanoLocal : String = ""
    @IBOutlet weak var pickerTamano: UIPickerView!
    let tamanos = ["Pequeña","Mediana","Grande"]

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let sigVista = segue.destination as! VistaMasa
        sigVista.tamano = tamanoLocal
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanos.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        tamanoLocal = tamanos[row]
        return tamanos[row]
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
    self.navigationItem.setHidesBackButton(true, animated: true)
        
        pickerTamano.delegate = self
        pickerTamano.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

