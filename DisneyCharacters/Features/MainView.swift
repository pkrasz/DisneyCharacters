//
//  MainView.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 13/09/2022.
//

import UIKit

class MainView: UIView {

    //MARK: - SubView

    let disneyTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .clear
        return tableView
    }()
    
    // MARK: - Initiliazation
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    func setupView() {
        backgroundColor = UIColor.systemCyan
    }
    func setupSubviews() {
        [disneyTableView]
            .forEach(addSubview)
    }
    func setupConstraints() {
        NSLayoutConstraint.activate([
           
           disneyTableView.topAnchor.constraint(equalTo: topAnchor, constant: 110),
           disneyTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
           disneyTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -13),
           disneyTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -40)
          
        ])
    }
}

