//
//  MovieSearchQuery.swift
//  MovieSearch
//
//  Created by Jaewon Yun on 2023/05/23.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import RxSwift

struct SearchMovieUseCase: Domain.SearchMovieUseCase {
    
    func searchMovies(with query: Domain.MovieSearchQuery) -> RxSwift.Observable<[Domain.Movie]> {
        return .just([])
    }
}
