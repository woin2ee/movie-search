//
//  SharedConfig.swift
//  ProjectDescriptionHelpers
//
//  Created by Jaewon Yun on 2023/05/19.
//

import ProjectDescription

public let BASIC_BUNDLE_ID = "com.woin2ee"
public let ORGANIZATION = "woin2ee"
public let APPLICATION_NAME = "MovieSearch"
public let SHARED_DEPLOYMENT_TARGET: DeploymentTarget = .iOS(targetVersion: "16.0", devices: [.iphone])
public let XCODE_VERSION: Version? = .init(14, 2, 0)

extension Project {
    public static let organizationName = ORGANIZATION
}
