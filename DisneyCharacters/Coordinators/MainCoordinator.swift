//
//  MainCoordinator.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 13/09/2022.
//

import ApiClient
import Foundation
import UIKit

extension ApiClient: DataFetchable {}

class MainCoordinator: Coordinator {
    var navigationController: UINavigationController?
    
    func eventOccurred(with type: Event) {
  
    }
    
    func start() {
        
        var vc: UIViewController & Coordinating = MainViewController(dataFetchable: ApiClient.shared)
        vc.coordinator = self

        navigationController?.setViewControllers([vc], animated: false)
    }
    
    
}
