//
//  ProfileNPostView.swift
//  LinkedIn
//
//  Created by Gurjinder Singh on 31/10/23.
//

import SwiftUI

struct ProfileNPostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            SearchBarView()
            Divider()
            HStack {
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Calendar")
            }.padding(.horizontal)
            
        }
    }
}

struct ProfileNPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileNPostView()
    }
}
