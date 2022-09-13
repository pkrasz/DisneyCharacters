//
//  MainTableVIewCell.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 13/09/2022.
//

import UIKit

final class DisneyTableViewCell: UITableViewCell {

//MARK: Properties

static let identifier = "DisneyTableViewCell"

//MARK: - Subview
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .darkGray
        return label
    }()

//MARK: - Initializator

override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    setupView()
    setupSubviews()
    setupConstraints()
    
}

required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
}

//MARK: - Setup

private func setupView() {
    layer.cornerRadius = 10
    backgroundColor = .white.withAlphaComponent(0.75)
}

private func setupSubviews() {
    [nameLabel]
        .forEach(addSubview)
}

private func setupConstraints() {
    NSLayoutConstraint.activate([
        
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
        nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
    ])
}
}
