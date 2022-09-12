//
//  ViewController.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 12/09/2022.
//

import UIKit

class MainViewController: UIViewController, Coordinating {


    //MARK: - Properties
    
    var coordinator: Coordinator?
    
    var contentView: MainView {
        return view as! MainView
    }
    
    //MARK: - Initializators
    
    init() {
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle
    
    override func loadView() {
        view = MainView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupBindings()
        setupView()
    }
    
    //MARK: - Setup
    
    private func setupView() {
        self.navigationController?.navigationBar.backgroundColor = .systemCyan
    }
    
    private func setupBindings() {

    }
    
    //MARK: - Methods
    
   
}



