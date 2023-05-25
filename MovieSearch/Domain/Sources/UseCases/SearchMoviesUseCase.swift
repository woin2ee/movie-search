//
//  SearchMoviesUseCase.swift
//  Domain
//
//  Created by Jaewon Yun on 2023/05/23.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import RxSwift

public struct SearchMoviesUseCase: SearchMoviesUseCaseProtocol {
    
    let movieRepository: MovieRepositoryProtocol
    
    public init(movieRepository: MovieRepositoryProtocol) {
        self.movieRepository = movieRepository
    }
    
    public func execute(with query: MovieSearchQuery) -> Observable<[Movie]> {
        return movieRepository.getMovies(by: query)
    }
    
}
