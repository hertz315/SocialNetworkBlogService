//
//  UserStateView.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/18/22.
//

import SwiftUI

struct UserStateView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("807")
                    .font(.headline)
                    .bold()
                Text("Following")
                    .font(.caption)
            }
            
            HStack(spacing: 4) {
                Text("6.9M")
                    .font(.headline)
                    .bold()
                Text("Followers")
                    .font(.caption)
            }
            
        }

    }
}

struct UserStateView_Previews: PreviewProvider {
    static var previews: some View {
        UserStateView()
    }
}
