//
//  SceneDelegate.swift
//  TabBar
//
//  Created by Екатерина Яцкевич on 6.04.25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: scene)
        self.window?.rootViewController = TabView()
        self.window?.makeKeyAndVisible()
    }

  
}

