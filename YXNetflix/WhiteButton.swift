//
//  WhiteButton.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/23.
//

import SwiftUI

struct WhiteButton: View {
    var text: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: {action()}) {
            HStack {
                Spacer()
                Image(systemName: imageName)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
        }
        .foregroundColor(.black)
        .background(Color.white)
        .padding(.vertical, 6)
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
                  Color.black
                  WhiteButton(text: "Play", imageName: "play.fill") {
 
                  }
              }
    }
}
