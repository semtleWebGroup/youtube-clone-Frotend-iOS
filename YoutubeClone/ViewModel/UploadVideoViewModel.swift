//
//  UploadVideoViewModel.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/05/27.
//

import Foundation

class UploadVideoViewModel {
    static let shared = UploadVideoViewModel()
    var videoURL: URL?
    private init(){}
}
