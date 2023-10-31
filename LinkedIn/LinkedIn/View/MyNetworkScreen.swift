//
//  MyNetworkView.swift
//  LinkedIn
//
//  Created by Gurjinder Singh on 31/10/23.
//

import SwiftUI

let sampleModel: [NetworkModel] = [
    NetworkModel.init(id: 0, name: "Gurjinder Singh", position: "iOS dev", mutual: "45", image: "00"),
    NetworkModel.init(id: 1, name: "Atinder Singh", position: "Accountant", mutual: "34", image: "01"),
    NetworkModel.init(id: 2, name: "Sarbjeet Kaur", position: "Accountant", mutual: "78", image: "02"),
    NetworkModel.init(id: 3, name: "Gurdeep Singh", position: "iOS dev at paytm", mutual: "04", image: "03"),
    NetworkModel.init(id: 4, name: "John", position: "Rec at Infosys", mutual: "14", image: "04"),
    NetworkModel.init(id: 5, name: "Micheal", position: "Android Dev at Bell", mutual: "28", image: "05"),
    NetworkModel.init(id: 6, name: "Gurjinder Singh", position: "iOS dev", mutual: "45", image: "00"),
    NetworkModel.init(id: 7, name: "Atinder Singh", position: "Accountant", mutual: "34", image: "01"),
    NetworkModel.init(id: 8, name: "Sarbjeet Kaur", position: "Accountant", mutual: "78", image: "02"),
    NetworkModel.init(id: 9, name: "Gurdeep Singh", position: "iOS dev at paytm", mutual: "04", image: "03"),
    NetworkModel.init(id: 10, name: "John", position: "Rec at Infosys", mutual: "14", image: "04"),
    NetworkModel.init(id: 11, name: "Micheal", position: "Android Dev at Bell", mutual: "28", image: "05"),
]

struct MyNetworkView: View {
    var body: some View {
        VStack {
            SearchBarView()
            
            HStack {
                Text("Manage my network")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            Rectangle()
                .fill(.gray).opacity(0.4)
                .frame(height: 10)
            
            HStack{
                Text("Invitation")
                    .font(.body)
                    .foregroundColor(.blue)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundColor(.gray)
            }.padding(.horizontal)
            Divider()
            
            ScrollView(.vertical, showsIndicators: false) {
                    ForEach(sampleModel, id: \.id) { post in
                        InvitationView(model: post)
                        Divider()
                    }
            }
        }
//        .edgesIgnoringSafeArea(.bottom)
    }
}

struct MyNetworkView_Previews: PreviewProvider {
    static var previews: some View {
        MyNetworkView()
    }
}
