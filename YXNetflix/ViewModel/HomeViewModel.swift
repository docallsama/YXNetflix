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
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisode: CurrentEpisodeInfo
    var promotionHeadline: String?
    var creators: String
    var cast: String
    
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
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisode.season):E\(defaultEpisode.episode) \(defaultEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisode.description
        }
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
