//
//  StandardHomeMovieView.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/21.
//

import SwiftUI
import Kingfisher

struct StandardHomeMovieView: View {
    var movie: Movie
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovieView_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovieView(movie: exampleMovie1)
    }
}
