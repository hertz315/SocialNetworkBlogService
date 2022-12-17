//
//  SideMenuView.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/18/22.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading ,spacing: 4) {
                    Text("이홍구")
                        .font(.headline)
                    
                    Text("@superman")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStateView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuVM.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuItemRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        print("Handle logout here..")
                    } label: {
                        SideMenuItemRowView(viewModel: viewModel)
                    }

                } else {
                    SideMenuItemRowView(viewModel: viewModel)
                }
              
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

extension SideMenuView {
    
}
