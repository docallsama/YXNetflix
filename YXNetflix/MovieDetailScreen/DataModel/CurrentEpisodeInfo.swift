//
//  CurrentEpisodeInfo.swift
//  YXNetflix
//
//  Created by BJSadmin on 2022/11/25.
//

import Foundation

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
