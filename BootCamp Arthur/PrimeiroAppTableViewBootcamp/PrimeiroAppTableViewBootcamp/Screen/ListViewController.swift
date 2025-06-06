//
//  ViewController.swift
//  PrimeiroAppTableViewBootcamp
//
//  Created by Arthur Lima on 05/06/2025.
//

import UIKit

class ListViewController: UIViewController {
    
    var screen: ListScreen?
    
    var nameList: [String] = ["CineFlix"]
   

    
    @objc func tappedLoginButton() {
        print(#function)
    }
    
    
    
    
    
    override func loadView() {
        screen = ListScreen()
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        screen?.tableView.delegate = self
        screen?.tableView.dataSource = self
    }
    
}

extension ListViewController: UITableViewDelegate, UITableViewDataSource {
    // contador!!!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nameList.count
    }
    
    // metodo de criacao!!!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell
        cell?.nameLabel.text = nameList[indexPath.row]
        return cell ?? UITableViewCell()
    }
}

