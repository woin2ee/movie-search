//
//  ViewModelAssembly.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import Swinject
import UI

final class ViewModelAssembly: Assembly {
    
    func assemble(container: Swinject.Container) {
        container.register(MovieSearchViewModel.self) { r in
            let searchMoviesUseCase = r.resolve(SearchMoviesUseCaseProtocol.self)!
            return MovieSearchViewModel(searchMoviesUseCase: searchMoviesUseCase)
        }
    }
}
