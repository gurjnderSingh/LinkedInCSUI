//
//  HomeScreen.swift
//  LinkedIn
//
//  Created by Gurjinder Singh on 31/10/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing: 20) {
            ProfileNPostView()
            PostView()
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
