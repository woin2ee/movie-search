//
//  UseCaseAssembly.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import Swinject
import UI

final class UseCaseAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(Domain.SearchMoviesUseCase.self) { _ in
            return UI.SearchMoviesUseCase.shared
        }
    }
}
