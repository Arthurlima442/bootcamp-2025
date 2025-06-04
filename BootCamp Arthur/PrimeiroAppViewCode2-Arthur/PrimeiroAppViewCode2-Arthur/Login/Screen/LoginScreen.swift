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
        loginLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        loginLabel.text = "Login"
        
        
        
        
        
        
        return label
    }()
    
    
    
    
    
    
    
    
    
    
    
    
    init() {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
