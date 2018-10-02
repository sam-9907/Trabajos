//
//  ViewController.swift
//  3septiembre
//
//  Created by macbook on 03/09/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tablita: UITableView!
    
    var mascotas = [compra]()
    var carrito = [compra]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mascotas.append(compra(nombre: "teporingo", precio: 569.9, descripcion: "casero"))
        mascotas.append(compra(nombre: "coco", precio: 566.89, descripcion: "jdjdj"))

    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mascotas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel?.text = "\(mascotas[indexPath.row].nombre)"
        
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "secondViewController"{
            let indexPath = tablita.indexPathForSelectedRow
            let destination = segue.destination as! SecondViewController
            destination.fromFirstView = mascotas[(indexPath?.row)!]
        }

    }


}



