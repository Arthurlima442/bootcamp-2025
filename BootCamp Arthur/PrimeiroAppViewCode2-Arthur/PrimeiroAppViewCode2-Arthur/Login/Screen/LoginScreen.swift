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
    
    
    
    
    init() {
        super.init(frame: .zero)
        backgroundColor = .orange
        addElements()
        configContraints()
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(loginLabel)
    }
    
    func configContraints() {
        NSLayoutConstraint.activate([
            loginLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            loginLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    
    
}
