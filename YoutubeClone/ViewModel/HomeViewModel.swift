//
//  HomeViewModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/28.
//

import Foundation
import Alamofire

class HomeViewModel {
    
    func getHomeVideoList(page: Int, size: Int, onCompletion: @escaping (VideoListResponse?) -> Void) {
        let url = APIConstants.baseURL + "/home?page=\(page)&size=\(size)"
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   headers: nil)
            .responseDecodable(of: VideoListResponse.self) { response in
                switch response.result {
                case .success(let response):
                    print(response)
                    onCompletion(response)
                case .failure(let error):
                    print("Error retrieving video list: \(error.localizedDescription)")
                    onCompletion(nil)
                }
            }
    }
    
}
