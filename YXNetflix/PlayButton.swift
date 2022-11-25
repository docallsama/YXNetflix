//
//  WhiteButton.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/23.
//

import SwiftUI

struct PlayButton: View {
    var text: String
    var imageName: String
    var backgroundColor = Color.white
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
        .foregroundColor(backgroundColor == .white ? .black : .white)
        .background(backgroundColor)
        .padding(.vertical, 6)
        .cornerRadius(3.0)
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
                  Color.black
                  PlayButton(text: "Play", imageName: "play.fill") {
 
                  }
              }
    }
}
