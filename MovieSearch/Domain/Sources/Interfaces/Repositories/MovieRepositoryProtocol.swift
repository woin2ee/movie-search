//
//  MovieRepositoryProtocol.swift
//  Domain
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import RxSwift

public protocol MovieRepositoryProtocol {
    
    func getMovies(by query: MovieSearchQuery) -> Observable<[Movie]>
}
