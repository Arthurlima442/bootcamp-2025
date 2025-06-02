//
//  ViewController.swift
//  ProjetoTelaLoginTeste3Arthur
//
//  Created by Barbara Brigolin on 29/05/25.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      configElements()
    }
    
    
    func configElements() {
        view.backgroundColor = .gray
        
        loginLabel.text = "Login"
        loginLabel.textAlignment = .center
        loginLabel.font = UIFont.systemFont(ofSize: 22, weight: .regular)
        
        emailTextField.placeholder = "Digite seu email:"
        emailTextField.textAlignment = .left
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocorrectionType = .no
        emailTextField.delegate = self
        emailTextField.layer.borderColor = UIColor.lightGray.cgColor
        emailTextField.layer.borderWidth = 1
        emailTextField.clipsToBounds = true
        emailTextField.layer.cornerRadius = 8
        
        passwordTextField.placeholder = "Digite sua senha:"
        passwordTextField.textAlignment = .left
        passwordTextField.autocorrectionType = .no
        passwordTextField.delegate = self
        passwordTextField.layer.borderColor = UIColor.lightGray.cgColor
        passwordTextField.layer.borderWidth = 1
        passwordTextField.isSecureTextEntry = true
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.cornerRadius = 8
        
        confirmPasswordTextField.placeholder = "Confirme sua senha:"
        confirmPasswordTextField.textAlignment = .left
        confirmPasswordTextField.autocorrectionType = .no
        confirmPasswordTextField.delegate = self
        confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
        confirmPasswordTextField.layer.borderWidth = 1
        confirmPasswordTextField.isSecureTextEntry = true
        confirmPasswordTextField.clipsToBounds = true
        confirmPasswordTextField.layer.cornerRadius = 8
        
        // alterar no storyboard o Type para Custom e o Style para Default
        loginButton.setTitle("Login", for: .normal)
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 16
        loginButton.backgroundColor = .systemBlue
        loginButton.titleLabel?.textColor = .white
        
        
//        loginButton.setImage(UIImage(systemName: "eye"), for: .normal)
        
    }
    
    
    @IBAction func tappetLoginButton(_ sender: Any) {
        // se o texto não for vazio
        // se a minha senha for maior que 5 caracteres (Dica: utilize o .count no textField.text?.count -> ele vai te falar a quantidade de caracteres que tem no texto)
        // campo de senha e confirmar senha devem ser iguais
        // se der boom, print sucesso, se não "atenção!!"
        allValidation()
        
    }
    
    
    func allValidation() {
        let email = emailTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        let confirmPassword = confirmPasswordTextField.text ?? ""
        
        if email.isEmpty || password.isEmpty || confirmPassword.isEmpty {
            print("Atenção!!!")
        } else if password.count > 5 && password == confirmPassword {
            print("Sucesso!!!")
            // exemplo 2
            //            if password == confirmPassword {
            //                print("Sucesso!!!")
            //            }
        } else {
            print("Atenção!!!")
        }
        
        func isValidEmail(_ email: String) -> Bool {
            let emailPattern = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
            let emailPred = NSPredicate(format:"SELF MATCHES %@", emailPattern)
            return emailPred.evaluate(with: email)
        }
        
        
    }
 
    
    
    
    
    
    
    
}


    extension LoginViewController: UITextFieldDelegate {
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
          textField.resignFirstResponder()
          return true
        }
        
        
    }

