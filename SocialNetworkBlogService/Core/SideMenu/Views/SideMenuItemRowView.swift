//
//  SideMenuItemRowView.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/18/22.
//

import SwiftUI

struct SideMenuItemRowView: View {
    let viewModel: SideMenuVM
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuItemRowView(viewModel: .profile)
    }
}
