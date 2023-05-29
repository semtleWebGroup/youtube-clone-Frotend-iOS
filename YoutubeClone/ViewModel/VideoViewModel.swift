//
//  VideoViewModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/29.
//

import Foundation
import Alamofire

class VideoViewModel {
    var UserInfo = userinfo.shared

    func getHomeVideoList(videoId: UUID, onCompletion: @escaping (VideoResponse?) -> Void) {
        let url = APIConstants.baseURL + "/videos/\(videoId)"
        let headers: HTTPHeaders = [
            "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJBQ0NFU1NfVE9LRU4iLCJpYXQiOjE2ODUxMjQ5OTEsImV4cCI6MTY4NTk4ODk5MSwiRU1BSUwiOiJlbWFpbEBhcGFwYS5jb20iLCJST0xFIjoiUk9MRV9VU0VSIiwiTUVNQkVSX0lEIjoiK091OW1xR0c0UmRoejRpNWZsNzVWUT09IiwiQ0hBTk5FTF9JRCI6IiJ9.-QWBGC-mGwK3_eVeb3lCYBjP34BB3MD4sxc6yNwyW6Q",
        ]
        
        AF.request(url,
                   method: .get,
                   parameters: nil,
                   headers: headers)
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
