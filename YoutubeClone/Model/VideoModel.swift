//
//  VideoModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/29.
//

import Foundation
struct VideoRequest: Codable{
    let videoId: UUID
}
struct VideoResponse: Codable {
    let videoId: UUID
    let videoSec: TimeInterval
    let channelId: Int
    let channelName: String
    let channelProfileImg: String?
    let channelSubscriberCount: Int
    let title: String
    let description: String
    let createdTime: Date
    let viewCount: Int
    let likeCount: Int
    let qualityList: [String]
    let like: Bool
}
