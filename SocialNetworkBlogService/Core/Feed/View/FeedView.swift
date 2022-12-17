//
//  FeedView.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/17/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1...20, id: \.self) { _ in
                    // Tweet Row View
                    TweetRowView()
                        .padding()
                    
                }
            }
        }
    }
}

//struct FeedView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeedView()
//    }
//}
