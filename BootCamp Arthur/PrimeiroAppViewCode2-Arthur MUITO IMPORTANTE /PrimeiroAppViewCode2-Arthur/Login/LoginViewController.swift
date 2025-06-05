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
        configProtocol()
    }
    
    func configProtocol() {
        screen?.delegate = self
        screen?.emailTextField.delegate = self
        screen?.passwordTextField.delegate = self
        
    }

}
extension LoginViewController: LoginScreenProtocol {
    func tappedRegisterButton() {
        present(RegisterViewController(), animated: true)
    }
    
    func tappedLoginButton() {
        print(#function)
    }
}

extension LoginViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
