//
//  ViewController.swift
//  LoginProtocol
//
//  Created by emre on 8.10.2022.
//

import UIKit

class RootViewController: UIViewController, RootViewModelProtocol {

    
    private let viewModel : RootViewModel
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        view.backgroundColor = .yellow
        
        viewModel.checkLogin()
        
        
    }
    
    
    init(viewModel: RootViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        viewModel.outProtocol = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    

    //delegataion yaptık zaten asagıdakılerını cagaracaktı
    func showMainApp() {
        
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController,animated: true)
 
    }
    
    func showLogin() {
        
        let mainViewController = MainViewController()
        navigationController?.present(mainViewController,animated: true)
 
    }

}

