//
//  TweetFilterVM.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/18/22.
//

import Foundation

enum TweetFilterVM: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets:
            return "Tweets"
        case .replies:
            return "Replies"
        case .likes:
            return "Likes"
        }
    }
}
