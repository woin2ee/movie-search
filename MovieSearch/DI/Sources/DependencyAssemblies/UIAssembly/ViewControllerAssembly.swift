//
//  ViewControllerAssembly.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Swinject
import UI

final class ViewControllerAssembly: Assembly {
    
    func assemble(container: Swinject.Container) {
        container.register(MovieSearchViewController.self) { resolver in
            let viewModel = resolver.resolve(MovieSearchViewModel.self)!
            return MovieSearchViewController(viewModel: viewModel)
        }
    }
}
