//
//  ViewController.swift
//  AppCuenta
//
//  Created by Alumno on 8/18/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblPropina: UISlider!
    @IBOutlet weak var lblPropinaValue: UILabel!
    @IBOutlet weak var lblPropinaText: UITextField!
    @IBOutlet weak var lblPropinaTotal: UILabel!
    @IBOutlet weak var lblTotalConPropina: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sliderPropina(_ sender: Any) {
        lblPropinaValue.text = "\(Int(lblPropina.value))%"
        
        let cuenta: String = lblPropinaText.text!
        let cuentaInt = Int(cuenta) ?? 0

        let propina = Int(lblPropina.value)
        let propinacal = ((cuentaInt * propina)/100)
        
        lblPropinaTotal.text = "$\(propinacal)"
        lblTotalConPropina.text = "$\(propinacal + cuentaInt)"
    }
    
    
}

