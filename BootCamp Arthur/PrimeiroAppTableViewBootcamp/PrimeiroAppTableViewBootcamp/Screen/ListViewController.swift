//
//  ViewController.swift
//  PrimeiroAppTableViewBootcamp
//
//  Created by Arthur Lima on 05/06/2025.
//

import UIKit

class ListViewController: UIViewController {

    var screen: ListScreen?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       screen = ListScreen()
        self.view = screen
    }


}

