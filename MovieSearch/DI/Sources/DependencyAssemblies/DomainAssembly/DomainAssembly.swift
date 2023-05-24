//
//  DomainAssembly.swift
//  DI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Swinject

final class DomainAssembly: Assembly {
    
    func assemble(container: Container) {
        let assemblies: [Assembly] = [
            RepositoryAssembly(),
            UseCaseAssembly(),
        ]
        assemblies.forEach { $0.assemble(container: container) }
    }
}
