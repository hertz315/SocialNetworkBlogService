//
//  TweetRowView.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/17/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            // 프로필 이미지 + 유저인포 + 트윗
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color.blue)
                
                // 유저인포 + 트윗 캡션
                VStack(alignment: .leading, spacing: 4) {
                    // 유저인포
                    HStack {
                        Text("이홍구")
                            .font(.subheadline)
                            .bold()
                        
                        Text("@Superman")
                            .font(.caption)
                            .foregroundColor(.gray)
                        
                        Text("2m")
                            .foregroundColor(.gray)
                            .font(.caption2)
                        
                    }
                    
                    // 트윗 캡션
                    Text("나는 정대리님을 믿는다")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            // 액션버튼
            HStack {
                Button {
                    // 액션 처리
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }

                Spacer()
                
                Button {
                    // 액션 처리
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // 액션 처리
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    // 액션 처리
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        
        }
        
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
