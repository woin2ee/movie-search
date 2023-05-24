//
//  GlobalFunctions.swift
//  Utility
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Foundation

public func castOrThrow<T>(_ resultType: T.Type, _ object: Any) throws -> T {
    guard let returnValue = object as? T else {
        throw UtilityError.castingFailed(object: object, targetType: resultType)
    }
    return returnValue
}

public func unwrapOrThrow<T>(_ optionalValue: T?) throws -> T {
    guard let unwrappedValue = optionalValue else {
        throw UtilityError.nilValue(objectType: T.self)
    }
    return unwrappedValue
}
