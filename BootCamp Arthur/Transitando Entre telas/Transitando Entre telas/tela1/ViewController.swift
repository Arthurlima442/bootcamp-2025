//
//  ViewController.swift
//  Transitando Entre telas
//
//  Created by Arthur Lima on 03/06/2025.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet var firstNameTextField: UITextField!
    @IBOutlet var lastNameTextField: UITextField!
    @IBOutlet var nameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configElements()
        view.backgroundColor = .gray
    }
    
    func configElements () {
        firstNameTextField.placeholder = "Digite seu primeiro nome:"
        firstNameTextField.delegate = self
        firstNameTextField.textAlignment = .left
        
        lastNameTextField.placeholder = "Digite seu sobrenome:"
        lastNameTextField.delegate = self
        
        nameButton.setTitle("Saiba seu nome agora" , for:.normal)
        nameButton.titleLabel?.font = .systemFont(ofSize: 10, weight: .black)
   
    }
    
    func showalert(tittle: String, message: String) {
        let alertController = UIAlertController(title: tittle, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            print("cliquei no OK")
        }
        
        let cancelButton = UIAlertAction(title: "Cancelar", style: .cancel) { _ in
            print("cliquei no Cancelar")
        }
        
        alertController.addAction(okButton)
        alertController.addAction(cancelButton)
        present(alertController, animated: true)
    }
    
    
    @IBAction func viewFullNameButton(_ sender: UIButton) {
        if firstNameTextField.text?.isEmpty == true || lastNameTextField.text?.isEmpty == true {
            showalert(tittle: "Presta atenção!!", message: "complete todos os campos")
        } else {
            let tela02 = UIStoryboard(name: "Tela2ViewController", bundle: nil).instantiateViewController(identifier: "Tela2ViewController") { coder -> Tela2ViewController? in
                let fullName: String = "\(self.firstNameTextField.text ?? "") \(self.lastNameTextField.text ?? "")"
                return Tela2ViewController(coder: coder, fullName: fullName)
            }

            navigationController?.pushViewController(tela02, animated: true)
        }
    }
    
    
}


extension ViewController: UITextFieldDelegate {
    
    
}
