//
//  ViewModelAssembly.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Swinject

final class ViewModelAssembly: Assembly {
    
    func assemble(container: Swinject.Container) {
        container.register(MovieSearchViewModel.self) { _ in
            return MovieSearchViewModel()
        }
    }
}
