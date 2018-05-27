//
//  Valores.swift
//  pizza
//
//  Created by Fernando Rojas Hidalgo on 5/27/18.
//  Copyright © 2018 Rohisa. All rights reserved.
//

import WatchKit

class Valores: NSObject {
    
    var tamano : String = ""
    var masa : String = ""
    var queso : String = ""
    var ingredientes: [String] = []
    var mensaje: String = ""

    init(tam: String){
        self.tamano = tam
        }
    
    init(men: String){
        self.mensaje = men
    }
    
    init(tam: String, mas:String){
        tamano = tam
        masa =  mas
            }

    init(tam: String, mas:String, que:String){
        tamano = tam
        masa =  mas
        queso = que
        }

    init(tam: String, mas:String, que:String, ing:[String]){
        tamano = tam
        masa =  mas
        queso = que
        ingredientes = ing
        }
    
}
