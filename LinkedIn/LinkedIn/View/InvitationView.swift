//
//  InvitationView.swift
//  LinkedIn
//
//  Created by Gurjinder Singh on 31/10/23.
//

import SwiftUI

let model:NetworkModel = NetworkModel.init(id: 1, name: "Gurjinder Singh", position: "SDE at paytm", mutual: "34", image: "00")
struct InvitationView: View {
    
    let model: NetworkModel
    
    var body: some View {
        HStack {
            Image(model.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text(model.name)
                    .font(.body)
                Text(model.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(model.mutual) mutual connection")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(width: 150, height: 20, alignment: .leading)
            
            HStack {
                Button {
                    print("reject")
                } label: {
                    Image(systemName: "multiply.circle")
                        .font(.system(size: 30))
                        .foregroundColor(.gray)
                }
                
                Button {
                    print("Accept")
                } label: {
                    Image(systemName: "checkmark.circle")
                        .font(.system(size: 30))
                        .foregroundColor(.blue.opacity(0.8))
                }
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
//        .background(.red)
//        .padding(.horizontal)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(model: model)
    }
}
