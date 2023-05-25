//
//  RepositoryAssembly.swift
//  DI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Domain
import NetworkInfrastructure
import Swinject

final class RepositoryAssembly: Assembly {
    
    func assemble(container: Container) {
        container.register(MovieRepositoryProtocol.self) { r in
            return MovieRepository()
        }
    }
    
}
