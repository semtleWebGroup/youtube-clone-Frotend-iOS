//
//  UserInfo.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/04/11.
//

class userinfo {
    static let shared = userinfo()
    var userIdx: Int?
    var userId: String?
    var userImg: String?
    var userName: String?
    var userJWT: String?
    private init(){}

}
