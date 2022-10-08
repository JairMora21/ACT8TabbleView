//
//  AppDelegate.swift
//  ACT8TabbleView
//
//  Created by Alumno on 06/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    //En esta clase no modifique nada todo esta por default

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
       
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        
    }


}

