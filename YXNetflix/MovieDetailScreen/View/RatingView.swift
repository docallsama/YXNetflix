//
//  RatingView.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/24.
//

import SwiftUI

struct RatingView: View {
    
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(rating: "Rating")
    }
}
