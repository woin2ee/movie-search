//
//  SearchMovieUseCase.swift
//  Domain
//
//  Created by Jaewon Yun on 2023/05/23.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import RxSwift

public protocol SearchMovieUseCase {
    func searchMovies(with query: MovieSearchQuery) -> Observable<[Movie]>
}
