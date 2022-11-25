//
//  GlobalHelper.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/21.
//

import Foundation
import SwiftUI

let exampleEpisode = CurrentEpisodeInfo(episodeName: "Beginnigs and Ending",
                                        description: "Six months after the disappearance, the police from a task in 2052, Jona learns taht most of winden perished in an apocalyptic",
                                        season: 2,
                                        episode: 1)

let exampleMovie1 = Movie(id: UUID().uuidString,
                          name: "DARK",
                          thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2020,
                          rating: "TV-MA",
                          numberOfSeasons: 1,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci")

let exampleMovie2 = Movie(id: UUID().uuidString,
                          name: "Travellers",
                          thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2021,
                          rating: "TV-MA",
                          numberOfSeasons: 2,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci")
                          
let exampleMovie3 = Movie(id: UUID().uuidString,
                          name: "Communitity",
                          thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2022,
                          rating: "TV-MA",
                          numberOfSeasons: 3,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci")
                          
let exampleMovie4 = Movie(id: UUID().uuidString,
                          name: "Alone",
                          thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2019,
                          rating: "TV-MA",
                          numberOfSeasons: 4,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci")

let exampleMovie5 = Movie(id: UUID().uuidString,
                          name: "Hannibal",
                          thumbnailURL: URL(string: "https://picsum.photos/200/305")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2018,
                          rating: "TV-MA",
                          numberOfSeasons: 5,
                          defaultEpisode: exampleEpisode,
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci")

let exampleMovie6 = Movie(id: UUID().uuidString,
                          name: "After Life",
                          thumbnailURL: URL(string: "https://picsum.photos/200/306")!,
                          categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
                          year: 2017,
                          rating: "TV-MA",
                          numberOfSeasons: 6,
                          defaultEpisode: exampleEpisode,
                          promotionHeadline: "Watch Season 6 Now",
                          creators: "Baran bo Odan, Jantje Frises",
                          cast: "Louis Hofmann, Oliver Mascucci")


let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
