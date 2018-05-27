//
//  VistaConfirmacion.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/20/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import UIKit

class VistaConfirmacion: UIViewController {
    @IBOutlet weak var lblMensaje: UILabel!
    
    var mensaje : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

       lblMensaje.text = mensaje
        
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
