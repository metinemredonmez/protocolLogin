//
//  LoginStorageServiceImpl.swift
//  LoginProtocol
//
//  Created by emre on 8.10.2022.
//

import Foundation


class LoginStorageServiceImpl :LoginStrorageService { //service rprtocolu kullandık 
    
    //USER DEFAULT
    private let storage  = UserDefaults.standard
    
    
    var userAccessTokenKey: String {
        return "ACCESS_TOKEN"
    }
    
    
    //kaydediyoruz
    func setUserAccessToken(token: String) {
        storage.set(token, forKey: userAccessTokenKey)
        
    }
    
    
    //burada veriyi alıyoruz
    func getUserAccessToken() -> String? {
        return storage.string(forKey: userAccessTokenKey)
        
        
    }
    
    
    
}
