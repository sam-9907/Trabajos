//
//  ViewController.swift
//  22agosto
//
//  Created by macbook on 22/08/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func action(_ sender: UITapGestureRecognizer) {
        var x = sender.location(in: view).x
        var y = sender.location(in: view).y
        view.backgroundColor = UIColor(red: x/400, green: y/400, blue: (x-y)/400, alpha: 1.0)
        //son las coordenadas de donde le pico en la pantalla
        //dump informacion mas detallada de una tupla
        //este programa al picar la pantalla cambia de color dependiendo de donde se pique en la pantalla
        // alpha 1 es opaco y 0 transparencia
        //tap view controller contiene una coleccion de celdas o secciones
        //table view una sola vista
        let vista = SecondViewController() 
        
    }
    
}

