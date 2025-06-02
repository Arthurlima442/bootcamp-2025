//
//  ViewController.swift
//  ProjetoTelaLoginTeste4Arthur
//
//  Created by Barbara Brigolin on 30/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eyePassawordImagView: UIImageView!
    @IBOutlet weak var eyeConfirmPassawordImageView: UIImageView!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   configElements()
    }

    func configElements(){
        view.backgroundColor = .gray
        
        loginLabel.text = "Login"
        loginLabel.textColor = .white
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        loginLabel.textAlignment = .center
        
        emailTextField.placeholder = "Email"
        emailTextField.textAlignment = .left
        emailTextField.keyboardType = .emailAddress
        emailTextField.delegate = self
        emailTextField.autocorrectionType = .no
        emailTextField.layer.borderWidth = 1
        emailTextField.layer.borderColor = UIColor.white.cgColor
        emailTextField.clipsToBounds = true
        emailTextField.layer.cornerRadius = 10
        
        passwordTextField.placeholder = "Senha"
        passwordTextField.textColor = .white
        passwordTextField.delegate = self
        passwordTextField.textAlignment = .left
        passwordTextField.keyboardType = .default
        passwordTextField.autocorrectionType = .no
        passwordTextField.layer.borderWidth = 1
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.cornerRadius = 10
        
        confirmPasswordTextField.placeholder = "Confirme a senha"
        confirmPasswordTextField.textColor = .white
        confirmPasswordTextField.delegate = self
        confirmPasswordTextField.textAlignment = .left
        confirmPasswordTextField.keyboardType = .default
        confirmPasswordTextField.autocorrectionType = .no
        confirmPasswordTextField.layer.borderWidth = 1
        confirmPasswordTextField.layer.borderColor = UIColor.white.cgColor
        confirmPasswordTextField.clipsToBounds = true
        confirmPasswordTextField.layer.cornerRadius = 1
        
        LoginButton.setTitle( "Login", for: .normal)
        LoginButton.layer.cornerRadius = 16
        LoginButton.clipsToBounds = true
        LoginButton.backgroundColor = .systemBlue
        LoginButton.titleLabel?.textColor = .white
        
    }
    
    
    
    
    
    
    
    
    @IBAction func tappetLoginButton(_ sender: Any) {
    }
    
    
    
    
    
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
