//
//  CastInfoView.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/25.
//

import SwiftUI

struct CastInfoView: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            HStack {
                Text(movie.cast)
                Spacer()
            }
            HStack {
                Text(movie.creators)
                Spacer()
            }
        }
        .padding(.vertical, 10)
        .foregroundColor(.gray)
        .font(.caption)
    }
}

struct CastInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CastInfoView(movie: exampleMovie1)
        }
    }
}
