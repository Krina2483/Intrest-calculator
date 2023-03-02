//
//  ViewController.swift
//  Intrest calculator
//
//  Created by Krina Bhalodiya on 11/11/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtrate: UITextField!
    @IBOutlet weak var txtamt: UITextField!
    @IBOutlet weak var txttime: UITextField!
    @IBOutlet weak var lbl: UILabel!
    var principal:Double = Double()
    var rate:Double = Double()
    var time:Double = Double()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func count(_ sender: Any) {
        principal = Double(txtamt.text ?? "0") ?? 0
        rate = Double(txtrate.text ?? "0") ?? 0
        time = Double(txttime.text ?? "0") ?? 0
        
        let ans = principal * rate * time / 100
        lbl.text = "Interest is \(ans) rupees"
    }
}

