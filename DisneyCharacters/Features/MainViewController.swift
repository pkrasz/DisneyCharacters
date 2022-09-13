//
//  ViewController.swift
//  DisneyCharacters
//
//  Created by Paweł Kraszewski on 12/09/2022.
//

import UIKit

//MARK: - Protocol

public protocol DataFetchable {
    func getData<Object: Decodable>(endpoint: String?, as type: Object.Type, completion: @escaping (Object?, String?) -> Void)
}

class MainViewController: UIViewController, Coordinating {


    //MARK: - Properties
    
    let dataFetchable: DataFetchable
    var coordinator: Coordinator?
    
    var charactersArr: [Character] = []
    
    var contentView: MainView {
        return view as! MainView
    }
    
    //MARK: - Initializators
    
    init(dataFetchable: DataFetchable) {
        self.dataFetchable = dataFetchable
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Lifecycle
    
    override func loadView() {
        view = MainView()
        title = "Disney Characters"
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
        dataFetchable.getData(endpoint: nil, as: CharcterData.self) {[weak self] data, error in
            if let data = data {
                self?.charactersArr = data.data
            }
            if let error = error {
                print("Error: \(error)")
            }
        }
    }
    
    //MARK: - Methods
    
   
}



