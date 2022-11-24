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
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
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
