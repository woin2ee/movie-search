//
//  UtilityError.swift
//  Utility
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Foundation

enum UtilityError: Error {
    case castingFailed(object: Any, targetType: Any.Type)
    case nilValue(objectType: Any.Type)
}
