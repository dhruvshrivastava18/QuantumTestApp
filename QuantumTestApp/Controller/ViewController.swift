//
//  ViewController.swift
//  QuantumTestApp
//
//  Created by Dhruv Shrivastava on 15/09/22.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Log In".uppercased()
        
    }
}

