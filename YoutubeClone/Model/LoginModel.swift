//
//  LoginModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/27.
//

import Foundation
import Alamofire

struct LoginRequest: Codable{
    let email, password: String
    
    var parameters: [String: Any] {
         return [
             "email": email,
             "password": password,
         ]
     }
}
struct LoginResponse: Decodable {
    let users: [User]
}
// MARK: - User
struct User: Decodable {
    let name: String
    let key: Int
}


