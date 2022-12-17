//
//  NewTweetView.swift
//  SocialNetworkBlogService
//
//  Created by Hertz on 12/18/22.
//

import SwiftUI

struct NewTweetView: View {
    @State var caption: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    print("Cancle button Dismiss")
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Button {
                    print("Cancle button Dismiss")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea("무슨일이에요?", text: $caption)
               
            }
            .padding()
            
        }
    }
}

//struct NewTweetView_Previews: PreviewProvider {
//    static var previews: some View {
//        NewTweetView()
//    }
//}
