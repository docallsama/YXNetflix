//
//  MoreLikeThisView.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/28.
//

import SwiftUI

struct MoreLikeThisView: View {
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(movies) { movie in
                StandardHomeMovieView(movie: movie)
            }
        }
    }
}

struct MoreLikeThisView_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThisView(movies: exampleMovies)
    }
}
