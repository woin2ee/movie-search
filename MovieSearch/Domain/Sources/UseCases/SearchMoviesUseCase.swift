//
//  SearchMoviesUseCase.swift
//  Domain
//
//  Created by Jaewon Yun on 2023/05/23.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import RxSwift

public protocol SearchMoviesUseCase {
    
    static var shared: SearchMoviesUseCase { get }
    
    func execute(with query: MovieSearchQuery) -> Observable<[Movie]>
}
