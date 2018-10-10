//
//  secondviewcontrollerViewController.swift
//  22agosto
//
//  Created by macbook on 22/08/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class secondviewcontrollerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.red
    }
        // override hereda una propiedad o metodo
// esta funcion 

    @IBAction func x(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        //dismiss metodo de presentacion para que se haga animado y completion pierde si esta en view controller 
    }
}
