//
//  Reusable.swift
//  UI
//
//  Created by Jaewon Yun on 2023/05/30.
//  Copyright © 2023 woin2ee. All rights reserved.
//

import UIKit

protocol Reusable {
    
    static var reuseIdentifier: String { get }
    
}

extension Reusable {
    
    static var reuseIdentifier: String {
        return .init(describing: self)
    }
    
}

extension UITableViewCell: Reusable {}
