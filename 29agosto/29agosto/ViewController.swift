//
//  ViewController.swift
//  29agosto
//
//  Created by macbook on 29/08/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //estoy dentro de un viewciontroller
    //necesito un protocolo en este caso puede ser uitableviewdatasource o UItableviewdelegate
    var alumnos = ["Erick", "Andrea", "Daniel","Sandra"]
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
        //datos que va considerar para meter es lo que hace esta funcion
    }
    // cabe recalcar que si hacemos 2000 celdas no vasmoa a crear 2000 porque se ocuparia memoria por lo tanto las celdas se tendrían que reciclar
    //indexpath la posicion del dato
    //logica de negocio va  a depender de como el programador quiere comportarse
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = alumnos[indexPath.row]
        //optionals como puede tener textos como no
        return cell
    // cuando se ejecuta pinta la tabla pero no tiene nada porque aún se ha delegado lo que se tiene que hacer
        // lo que hacemos es que nos vamos a main story board y seleccionamos a table view controller y lo arrastramos a view controller y seleccionamos datasource para indicar que las 2 funciones se ejecuten  y con ello nos aprece los datos
        //ahora para que al sellecionar una celda va a realizar una acción
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("usted seleccionó a:\(alumnos[indexPath.row])")
        // nos falta delegar porque no hace nada sin embargo hacemos lo mismo que en el paso de arriba 
    }
}


