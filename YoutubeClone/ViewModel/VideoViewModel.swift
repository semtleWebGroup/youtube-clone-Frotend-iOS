//
//  VideoViewModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/29.
//

import Foundation
import Alamofire

class VideoViewModel {
    
    func getHomeVideoList(videoId: String, onCompletion: @escaping (VideoResponse?) -> Void) {
        let url = APIConstants.baseURL + "/videos/\(videoId)"
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   headers: nil)
            .responseDecodable(of: VideoResponse.self) { response in
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
