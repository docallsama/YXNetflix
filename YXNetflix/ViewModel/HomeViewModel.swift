//
//  HomeViewModel.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/21.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID().uuidString
    var name: String
    var thumbnailURL: URL
    var categories: [String]
}

class HomeViewModel: ObservableObject {
    @Published var movies = [String: [Movie]]()
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {

        movies["Trending Now"] = exampleMovies

        movies["Stand-up Comedy"] = exampleMovies.shuffled()

        movies["New Release"] = exampleMovies.shuffled()

        movies["Watch it again"] = exampleMovies.shuffled()

        movies["Sci"] = exampleMovies.shuffled()
    }
    
    public var allCategories : [String] {
        movies.keys.map({String($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie] {
        movies[cat] ?? []
    }
}
