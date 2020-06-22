//
//  SecondViewController.swift
//  PassData
//
//  Created by Yusuf ÇAĞLAR on 07/01/2019.
//  Copyright © 2019 Yusuf ÇAĞLAR. All rights reserved.
//

import UIKit

protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {

    var delegate : CanReceive?
    var data = ""
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
       
    }
    
    @IBAction func goToFirstPressed(_ sender: Any) {
       delegate?.dataReceived(data: textField.text!)
       self.dismiss(animated: true, completion: nil)
    }
    
}
