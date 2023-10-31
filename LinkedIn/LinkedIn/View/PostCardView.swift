//
//  PostCardView.swift
//  LinkedIn
//
//  Created by Gurjinder Singh on 31/10/23.
//

import SwiftUI
let samplePdata: PostData = PostData.init(id: 1, image: "0", title: "Gurjinder Singh", profileImage: "00", followers: 5)

struct SocialView {
    var ids: Int
    var image: String
    var titile: String
}

var socialViewModel: [SocialView] = [
    .init(ids: 0, image: "hand.thumbsup", titile: "Like"),
    .init(ids: 1, image: "text.bubble", titile: "Comment"),
    .init(ids: 2, image: "arrow.turn.up.right", titile: "Share"),
    .init(ids: 3, image: "paperplane.fill", titile: "Send"),

]

struct PostCardView: View {
    
    let pModel: PostData
    
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.5))
                .frame(height: 10)
            
            HStack {
                Image(pModel.profileImage)
                    .resizable()
                    .clipShape(Circle())
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading) {
                    Text(pModel.title)
                        .font(.body)
                    
                    Text("\(pModel.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal)
            
            Text("SwiftUI is a development framework for building user interfaces for iOS, iPadOS, watchOS, tvOS and macOS, from Apple Inc. SwiftUI provides views, controls, and layout structures for declaring the app's user interface")
            Image(pModel.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
//                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(pModel: samplePdata)
    }
}
