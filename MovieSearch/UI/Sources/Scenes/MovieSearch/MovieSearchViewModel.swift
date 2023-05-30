//
//  MovieSearchViewModel.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import RxSwift
import RxCocoa
import Utility

public final class MovieSearchViewModel: ViewModelType {
    
    let searchMoviesUseCase: SearchMoviesUseCaseProtocol
    
    public init(searchMoviesUseCase: SearchMoviesUseCaseProtocol) {
        self.searchMoviesUseCase = searchMoviesUseCase
    }
    
    func transform(input: Input) -> Output {
        let searchResults = input.searchKeyword
            .distinctUntilChanged()
            .debounce(.milliseconds(300))
            .flatMapLatest { keyword in
                let query: MovieSearchQuery = .init(keyword: keyword)
                return self.searchMoviesUseCase.execute(with: query)
                    .asDriverOnErrorJustComplete()
            }
        
        return .init(searchResults: searchResults)
    }
    
}

// MARK: - Input & Output

extension MovieSearchViewModel {
    
    struct Input {
        let searchKeyword: Driver<String>
    }
    
    struct Output {
        let searchResults: Driver<[Movie]>
    }
    
}
