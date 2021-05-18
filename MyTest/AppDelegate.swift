//
//  AppDelegate.swift
//  InventoryTest
//
//  Created by Restu Suryo Pratomo on 14/05/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let windowFrame: CGRect = UIScreen.main.bounds
        self.window = UIWindow(frame: windowFrame)
        let nav:UINavigationController = UINavigationController(rootViewController: NewsListViewController())
        self.window?.rootViewController = nav
        self.window?.makeKeyAndVisible()
        
        return true
    }


}

