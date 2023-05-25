//
//  MovieListResponse.swift
//  NetworkInfrastructure
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import Foundation

// MARK: - MovieListResponse

struct MovieListResponse: Decodable {
    
    let movieListResult: MovieListResult
    
}

// MARK: - MovieListResult

struct MovieListResult: Decodable {
    
    let movieList: [Movie]
    
}

// MARK: - Movie

struct Movie: Decodable, DomainConvertible {
    
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case name = "movieNm"
    }
    
    func toDomain() -> Domain.Movie {
        return .init(name: name)
    }
    
}
