//
//  MainView.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 13/09/2022.
//

import UIKit

class MainView: UIView {

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
    func setupSubviews() {}
    func setupConstraints() {}
}

