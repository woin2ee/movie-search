//
//  MovieSearchQuery.swift
//  Domain
//
//  Created by Jaewon Yun on 2023/05/23.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import Foundation

public struct MovieSearchQuery {
    let keyword: String
    
    public init(keyword: String) {
        self.keyword = keyword
    }
}
