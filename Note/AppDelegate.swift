//
//  AppDelegate.swift
//  Note
//
//  Created by thorn on 2/2/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    // enable root view
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let noteViewController = LoginViewController()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = noteViewController
        window?.makeKeyAndVisible()

        return true
    }

}

