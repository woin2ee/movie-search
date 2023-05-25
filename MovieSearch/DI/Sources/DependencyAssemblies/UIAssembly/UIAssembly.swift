//
//  UIAssembly.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Swinject

final class UIAssembly: Assembly {
    
    func assemble(container: Container) {
        let assemblies: [Assembly] = [
            ViewControllerAssembly(),
            ViewModelAssembly(),
        ]
        assemblies.forEach { $0.assemble(container: container) }
    }
    
}
