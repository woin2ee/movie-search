//
//  DomainConvertible.swift
//  NetworkInfrastructure
//
//  Created by Jaewon Yun on 2023/05/25.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Foundation

protocol DomainConvertible {
    
    associatedtype DomainType
    
    func toDomain() -> DomainType
    
}
