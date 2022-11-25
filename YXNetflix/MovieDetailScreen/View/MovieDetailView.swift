//
//  MovieDetailView.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/24.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            VStack {
                HStack {
                    Spacer()
                    Button {

                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                            .foregroundColor(.white)
                    }
                    .buttonStyle(.plain)
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    StandardHomeMovieView(movie: movie)
                        .frame(width: screen.width / 2.5)
                    MovieInfoSubheadline(movie: movie)
                    if let promotionHeadline = movie.promotionHeadline {
                        Text(promotionHeadline)
                            .foregroundColor(.white)
                            .bold()
                            .font(.headline)
                    }
                    PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
   
                    }
                    EpisodeInfoView(movie: movie)
                    CastInfoView(movie: movie)
                }
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: exampleMovie6)
    }
}

struct MovieInfoSubheadline: View {
    var movie: Movie
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
