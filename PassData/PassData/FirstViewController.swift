//
//  ViewController.swift
//  PassData
//
//  Created by Yusuf ÇAĞLAR on 07/01/2019.
//  Copyright © 2019 Yusuf ÇAĞLAR. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, CanReceive {


    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToSecond" {
            let secondVC = segue.destination as! SecondViewController
            secondVC.data = textField.text!
            secondVC.delegate = self
        }
    }
    
    @IBAction func goToSecondPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "goToSecond", sender: self)
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
    
}

