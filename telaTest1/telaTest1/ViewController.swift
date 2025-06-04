//
//  ViewController.swift
//  telaTest1
//
//  Created by Arthur Lima on 01/06/25.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var cineFlixLabel: UILabel!
    
    @IBOutlet weak var fraseLabel: UILabel!
    
    @IBOutlet weak var registerButton: UIButton!
    
    @IBOutlet weak var loginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configElements()
        view.tintColor = .red
        view.backgroundColor = .black
        // Do any additional setup after loading the view.
    }
    func configElements () {
        cineFlixLabel.text = "CineFlix"
        cineFlixLabel.textAlignment = .center
        cineFlixLabel.font = .systemFont(ofSize: 50, weight: .semibold)
        cineFlixLabel.textColor = .red
        
        fraseLabel.textColor = .white
        fraseLabel.textAlignment = .center
        fraseLabel.font = .systemFont(ofSize: 15, weight: .bold)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitle("Não estou habilitado", for: .disabled)
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 5
        
        registerButton.setTitle("Cadastrar", for: .normal)
        registerButton.setTitle("Não estou habilitado", for: .disabled)
        registerButton.clipsToBounds = true
        registerButton.layer.cornerRadius = 5
        
    }
    
    
    @IBAction func registerButton(_ sender: Any) {
        showalert(tittle: "Registro completo", message: "Começe Agora mesmo!!")
    }
    
    
    
    @IBAction func loginButton(_ sender: Any) {
        showalert(tittle: "Seja Bem Vindo!!", message: "Aproveite o App!!")
    }
    
    
    
    
    func showalert (tittle: String, message: String) {
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
    
    
    
    
}


