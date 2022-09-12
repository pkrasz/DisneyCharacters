//
//  Coordinator.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 12/09/2022.
//

import Foundation
import UIKit

enum Event {
    case goToDetails
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }
    
    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
