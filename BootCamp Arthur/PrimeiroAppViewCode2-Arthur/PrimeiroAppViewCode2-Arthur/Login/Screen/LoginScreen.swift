//
//  LoginScreen.swift
//  PrimeiroAppViewCode2-Arthur
//
//  Created by Arthur Lima on 04/06/2025.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        label.text = "Login"
        label.textAlignment = .center
        
        return label
    }()
    
    lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "person.fill")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Digite seu email:"
        tf.borderStyle = .roundedRect
        tf.keyboardType = .emailAddress
        
        return tf
    }()
    
    
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .lightGray
        addElements()
        configContraints()
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(loginLabel)
        addSubview(logoImageView)
        addSubview(emailTextField)
    }
    
    func configContraints() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            logoImageView.topAnchor.constraint(equalTo: loginLabel.bottomAnchor, constant: 20),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 100),
            logoImageView.widthAnchor.constraint(equalToConstant: 100),

            emailTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 50),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),

            
        ])
    }
}
