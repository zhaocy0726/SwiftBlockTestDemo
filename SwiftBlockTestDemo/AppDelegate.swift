//
//  AppDelegate.swift
//  SwiftBlockTestDemo
//
//  Created by zhaochunyang on 2019/11/19.
//  Copyright © 2019 zhaochunyang. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var vc = ViewController.init()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow.init(frame: UIScreen.main.bounds)
        self.window?.rootViewController = UINavigationController.init(rootViewController: vc)
        self.window?.makeKeyAndVisible()
        
        
        return true
    }

}

