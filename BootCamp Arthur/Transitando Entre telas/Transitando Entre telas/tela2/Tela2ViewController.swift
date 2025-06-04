//
//  Tela2ViewController.swift
//  Transitando Entre telas
//
//  Created by Arthur Lima on 03/06/2025.
//

import UIKit

class Tela2ViewController: UIViewController {

    @IBOutlet var fullNameLabel: UILabel!
    
    var fullName: String
    
    init?(coder: NSCoder, fullName: String) {
      self.fullName = fullName
      super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameLabel.text = fullName.capitalized
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
