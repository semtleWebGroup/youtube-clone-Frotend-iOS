//
//  HomeModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/27.
//

import Foundation
import Alamofire

struct Video: Codable {
    let id: UUID
    let title: String?
    let channelImg: Data?
    let channelName: String?
    let viewCount: Int?
    let videoSec: TimeInterval
    let createdTime: String
}
struct VideoListResponse: Codable {
    let totalPages: Int
    let number: Int
    let numberOfElements: Int
    let videos: [Video]
}
