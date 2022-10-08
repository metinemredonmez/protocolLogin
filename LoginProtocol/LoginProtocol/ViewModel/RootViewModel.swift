//
//  RootViewModel.swift
//  LoginProtocol
//
//  Created by emre on 8.10.2022.
//

import Foundation

class RootViewModel {
    
    private let loginStorageService : LoginStrorageService
    
    //delegate
    weak var outProtocol :RootViewModelProtocol?
    
    init(loginStorageService: LoginStrorageService, outProtocol: RootViewModelProtocol? = nil) {
        self.loginStorageService = loginStorageService
        
        
    }
    
    
    //yapacagı ıslem bu
    
    func checkLogin() {
        
        if let accessToken = loginStorageService.getUserAccessToken() , !accessToken.isEmpty { //access token is empty degılse logın olmustur degılse else
         //   showMainApp()
            outProtocol?.showMainApp()
            
        }else {
            // login olmamıs!
           // showLogin()
            outProtocol?.showLogin()
        }
    }
    
    
    
}
