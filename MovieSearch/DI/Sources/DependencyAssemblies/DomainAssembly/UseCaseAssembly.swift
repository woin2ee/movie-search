//
//  UseCaseAssembly.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import Swinject

final class UseCaseAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(SearchMoviesUseCaseProtocol.self) { r in
            let movieRepository = r.resolve(MovieRepositoryProtocol.self)!
            return SearchMoviesUseCase(movieRepository: movieRepository)
        }
    }
    
}
