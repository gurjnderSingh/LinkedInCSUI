//
//  PostView.swift
//  LinkedIn
//
//  Created by Gurjinder Singh on 31/10/23.
//

import SwiftUI

let arrPostData: [PostData] = [
    PostData.init(id: 0, image: "0", title: "Gurjinder Singh", profileImage: "00", followers: 5),
    PostData.init(id: 1, image: "1", title: "Sarbjeet Kaur", profileImage: "01", followers: 2),
    PostData.init(id: 2, image: "2", title: "Sargun Kaur", profileImage: "02", followers: 3),
    PostData.init(id: 3, image: "3", title: "Amit", profileImage: "03", followers: 64),
    PostData.init(id: 4, image: "4", title: "Micheal", profileImage: "04", followers: 2),
    PostData.init(id: 5, image: "5", title: "Shivpoojan", profileImage: "05", followers: 5),
    PostData.init(id: 6, image: "6", title: "Amandeep Kaur", profileImage: "01", followers: 32),
    PostData.init(id: 7, image: "7", title: "Shilpa Vashist", profileImage: "02", followers: 7),
    PostData.init(id: 8, image: "8", title: "Rohit", profileImage: "03", followers: 54),
    PostData.init(id: 9, image: "9", title: "Anurag Tiwari", profileImage: "04", followers: 34),
    PostData.init(id: 10, image: "10", title: "Sonu", profileImage: "05", followers: 34),
    PostData.init(id: 11, image: "11", title: "Davinder Singh", profileImage: "04", followers: 65),
    PostData.init(id: 12, image: "12", title: "Amarjeet Kaur", profileImage: "03", followers: 34),
    PostData.init(id: 13, image: "13", title: "Gurpreet Singh", profileImage: "02", followers: 98),
    PostData.init(id: 14, image: "14", title: "Gurdeep Singh", profileImage: "01", followers: 233),
    ]

struct PostView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center) {
                ForEach(arrPostData, id: \.id) { data in
                    PostCardView(pModel: data)
                    HStack(alignment: .center, spacing: 30) {
                        ForEach(socialViewModel, id: \.ids) { model in
                            VStack {
                                Image(systemName: model.image)
                                Text(model.titile)
                            }
                            .foregroundColor(.black.opacity(0.8))
                            .font(.subheadline)
                        }.padding(.horizontal)
                    }
                }
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}
