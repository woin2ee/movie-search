//
//  SceneDelegate.swift
//  MyCounter
//
//  Created by Jaewon Yun on 2023/05/19.
//

import Swinject
import UI
import UIKit

final class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        
        let viewController: MovieSearchViewController = DIContainer.shared.resolve()
        window?.rootViewController = viewController
    }
}
