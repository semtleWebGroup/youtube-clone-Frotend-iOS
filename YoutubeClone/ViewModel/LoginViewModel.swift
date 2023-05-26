//
//  LoginViewModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/27.
//

import Foundation
import Alamofire

class LoginViewModel {
    func PostLogin(parameters: LoginRequest, onCompletion: @escaping (LoginResponse)->Void){
        let url = APIConstants.baseURL + "/auth/login"
        let headers: HTTPHeaders = ["Content-Type": "application/json"]
        
        AF.request(url, method: .post, parameters: parameters.parameters, encoding: JSONEncoding.default, headers: headers)
            .responseDecodable(of: LoginResponse.self) { response in
                switch response.result {
                case .success(let data):
                    if let httpResponse = response.response {
                        let headers = httpResponse.allHeaderFields
                        for (key, value) in headers {
                            print("\(key): \(value)")
                        }
                    }
                    print(data)
                    onCompletion(data)
                case .failure(let error):
                    print("에러!로그인")
                    print("Error: \(error)")
                }
            }
    }
}
