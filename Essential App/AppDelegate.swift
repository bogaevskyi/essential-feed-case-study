//
//  AppDelegate.swift
//  Essential App
//
//  Created by Andrew Bogaevskyi on 22.07.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(
            name: "Default Configuration",
            sessionRole: connectingSceneSession.role
        )
        
        #if DEBUG
        configuration.delegateClass = DebuggingSceneDelegate.self
        #endif
        
        return configuration
    }
}
