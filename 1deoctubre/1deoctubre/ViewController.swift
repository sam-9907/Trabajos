//
//  ViewController.swift
//  1deoctubre
//
//  Created by macbook on 01/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
         let defaults = UserDefaults.standard
        if let dato = defaults.object(forKey: "caja")as? String{
            caja.text = dato
        }else{
            caja.text = "No hay nada guardado"
        }
    }
    
    @IBOutlet weak var caja: UITextField!
    @IBAction func guardar(_ sender: UIButton) {
        let defaults = UserDefaults.standard
        //la linea 20 nos dice que estamos instanciando un tipo de dato, sucede que la variable es estatica (standard), porque no va haber otra referencia en toda la aplicación, para guardar la información
        if let dato = caja.text{
            defaults.set(dato, forKey: "caja")
            
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

