//
//  LoginScreen.swift
//  PrimeiroAppViewCode-Arthur
//
//  Created by Arthur Lima on 04/06/2025.
//

import UIKit

class LoginScreen: UIView {
    
    lazy var loginLabel: UILabel = {
        let label = UILabel ()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        return label
    }()
    
    
    
    
    
    
    
    init () {
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}



