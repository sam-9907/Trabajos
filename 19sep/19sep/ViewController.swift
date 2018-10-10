//
//  ViewController.swift
//  19sep
//
//  Created by macbook on 19/09/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var etiqueta :UILabel = {
        let lb = UILabel()
        lb.text = "Label"
        lb.font = UIFont(name: "Arial", size: 40.0)
        lb.translatesAutoresizingMaskIntoConstraints = false
        //habilitando constraint cuando le pones flase 
        return lb
        
    }()
    var boton :UIButton = {
        let bt = UIButton()
        bt.setTitle("Apuntar score", for: .normal)
        bt.backgroundColor = UIColor.red
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(etiqueta)
        view.addSubview(boton)
        etiqueta.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        etiqueta.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        boton.topAnchor.constraint(equalTo: etiqueta.bottomAnchor,constant:20).isActive = true
        boton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //primera fucnion que se ejecuta en  la vista
        //productos(arreglo)
        //productos.append(producto(nombre:
        //hacer la tabla celda pro
        //agregar uitableviewwdatasource
        //functableview y return productos.count
        //en el segundo let cell=tabla.deque("item"
        //cell.text
        //carrito un conjunto de productos
        //como manejar el carrito por medio de una var var carrito = [prodcuto
        //vista se tiene que mostrar todos los productos que se esten comprando
        //uinavigation controller para regresar a la vista
        //tableview embebido donde le tenemos que pasar el carrito
        //tner un arreglo llamado carrito es un arreglo de productos
        //el boton de carrito tiene que tener un metodoo carrito.append
        // en l apantalla de apple son puntos
        //
        // Do any additional setup after loading the view, typically from a nib.
    }
    //dueño de los propios metodos y variables
    //mvc modelo vista controlador
    //modelo de datos fuera del controlador
    //valores de referecnia servicio, solo clases para herencia
    //manejar datos es una estructura
    //inicializadores de la estructura es sintetico 

   


}

