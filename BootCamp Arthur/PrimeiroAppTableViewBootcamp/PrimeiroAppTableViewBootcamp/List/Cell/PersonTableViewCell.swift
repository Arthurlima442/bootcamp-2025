//
//  PersonTableViewCell.swift
//  PrimeiroAppTableViewBootcamp
//
//  Created by Arthur Lima on 05/06/2025.
//

import UIKit

class PersonTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: PersonTableViewCell.self)
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        label.text = "CineFlix"
        label.textColor = .red
        label.textAlignment = .center
        return label
    }()
    
    lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        title.text = "aproveite seu Filme!!!!"
        title.textColor = .red
        title.textAlignment = .center
        return title
    }()
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .black
        addElements()
        configContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        contentView.addSubview(titleLabel)
        contentView.addSubview(nameLabel)
    }
    
    func configContraints() {
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 40),
            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            nameLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

            titleLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
//titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),

        ])
    }
}
