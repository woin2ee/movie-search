//
//  DIContainer+PropertyWrapper.swift
//  MovieSearch
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

@propertyWrapper
public final class DI<T> {
    
    public let wrappedValue: T
    
    public init() {
        self.wrappedValue = DIContainer.shared.resolve()
    }
}
