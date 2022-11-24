//
//  TopRowButton.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/24.
//

import SwiftUI

struct TopRowButton: View {
    var body: some View {
        HStack {
            Button {

            } label: {
                Image("Netflix_icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50)
            }
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {

            } label: {
                Text("TV Shows")
            }
            .foregroundColor(.white)
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {

            } label: {
                Text("Movies")
            }
            .foregroundColor(.white)
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
            
            Button {

            } label: {
                Text("My List")
            }
            .foregroundColor(.white)
            .buttonStyle(PlainButtonStyle())
            
            Spacer()
        }
    }
}

struct TopRowButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            TopRowButton()
        }
    }
}
