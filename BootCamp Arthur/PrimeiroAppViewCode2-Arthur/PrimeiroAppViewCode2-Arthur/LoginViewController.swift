//
//  ViewController.swift
//  PrimeiroAppViewCode2-Arthur
//
//  Created by Arthur Lima on 04/06/2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    var screen: LoginScreen?
    
    override func loadView() {
        screen = LoginScreen()
        view = screen
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

