//
//  EpisodeInfoView.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/25.
//

import SwiftUI

struct EpisodeInfoView: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .foregroundColor(.white)
                Spacer()
            }
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .foregroundColor(.white)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}

struct EpisodeInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodeInfoView(movie: exampleMovie1)
        }
    }
}
