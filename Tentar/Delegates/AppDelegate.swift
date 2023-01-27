//
//  AppDelegate.swift
//  Tentar
//
//  Created by unicred on 08/12/22.
//

import UIKit

var defString = String(stringLiteral: "")
var defFloat = Float(floatLiteral: 0)

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        window?.rootViewController = UINavigationController.init(rootViewController: HomeViewController())
        
        return true
    }
}
