//
//  ViewModelType.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/24.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Foundation

protocol ViewModelType {
    
    /// `ViewModel` 로 들어올 `Input`
    associatedtype Input
    
    /// `ViewModel` 이 내보낼 `Output`
    associatedtype Output
    
    /// `Input` 을 받아서 적절한 처리 과정을 수행한 뒤 `Output` 을 반환합니다.
    func transform(input: Input) -> Output
}
