//
//  DIContainer+PropertyWrapper.swift
//  MovieSearch
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

@propertyWrapper
final class DI<T> {
    
    let wrappedValue: T
    
    init() {
        self.wrappedValue = DIContainer.shared.resolve()
    }
}
