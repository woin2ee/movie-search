//
//  DIContainer.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Swinject
import UI

final class DIContainer {
    
    static let shared: DIContainer = .init()
    
    private let container = Container()
    private let assembler: Assembler
    
    private init() {
        assembler = Assembler(
            [
                UIAssembly(),
            ],
            container: container
        )
    }
    
    func resolve<T>() -> T {
        guard let resolved = container.resolve(T.self) else {
            fatalError("\(T.self) type not registered.")
        }
        return resolved
    }
}
