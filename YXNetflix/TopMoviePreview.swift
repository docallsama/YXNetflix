//
//  TopMoviePreview.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/23.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: Movie
    
    func isCategorylast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        
        if let index = movie.categories.firstIndex(of: cat) {
            if index + 1 != catCount {
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        Text(category)
                        if !isCategorylast(category) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.blue)
                                .font(.system(size: 3))
                        }
                    }
                }
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List",
                                        isOnImage: "checkmark",
                                        isOffImage: "plus",
                                        isOn: true) {
                        print("Tapped")
                    }
                    Spacer()
                    WhiteButton(text: "Play", imageName: "play.fill") {
   
                    }
                    .frame(width: 200)
                    Spacer()
                    SmallVerticalButton(text: "Info",
                                        isOnImage: "info.circle",
                                        isOffImage: "info.circle",
                                        isOn: true) {
                        print("Tapped")
                    }
                    Spacer()
                }
            }
            .background(LinearGradient.blackOpacityGradient)
            .padding(.top, 250)
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
            TopMoviePreview(movie: exampleMovie1)
        }
    }
}
