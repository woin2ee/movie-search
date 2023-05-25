//
//  SharedConfig.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaewon Yun on 2023/05/19.
//

import ProjectDescription

// MARK: - Common Settings

public let BASIC_BUNDLE_ID = "com.woin2ee"

public let ORGANIZATION = "woin2ee"

public let APPLICATION_NAME = "MovieSearch"

public let SHARED_DEPLOYMENT_TARGET: DeploymentTarget = .iOS(targetVersion: "16.0", devices: [.iphone])

public let XCODE_VERSION: Version? = .init(14, 2, 0)

// MARK: - Naming

public struct TargetName {
    public static let app = "\(APPLICATION_NAME)"
    public static let domain = "Domain"
    public static let ui = "UI"
    public static let utility = "Utility"
    public static let di = "DI"
    public static let networkInfrastructure = "NetworkInfrastructure"
}

public struct ExternalDependencyName {
    public static let rxSwift = "RxSwift"
    public static let rxCocoa = "RxCocoa"
    public static let rxTest = "RxTest"
    public static let rxBlocking = "RxBlocking"
    public static let alamofire = "Alamofire"
    public static let rxAlamofire = "RxAlamofire"
    public static let swinject = "Swinject"
}
