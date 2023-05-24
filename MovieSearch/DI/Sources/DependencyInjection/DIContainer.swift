//
//  DIContainer.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Swinject

public final class DIContainer {
    
    public static let shared: DIContainer = .init()
    
    let container = Container()
    let assembler: Assembler
    
    init() {
        assembler = Assembler(
            [
                DomainAssembly(),
                UIAssembly(),
            ],
            container: container
        )
    }
    
    public func resolve<T>() -> T {
        guard let resolved = container.resolve(T.self) else {
            fatalError("\(T.self) type not registered.")
        }
        return resolved
    }
}
