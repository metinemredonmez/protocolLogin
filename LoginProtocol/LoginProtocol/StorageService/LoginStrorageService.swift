//
//  LoginStrorageService.swift
//  LoginProtocol
//
//  Created by emre on 8.10.2022.
//

import Foundation


protocol LoginStrorageService {
    // get ve set protcollerı olacak
    
    var userAccessTokenKey : String  {get}
    
    func setUserAccessToken(token:String)
    func getUserAccessToken() -> String?
    
    
    
    
}
