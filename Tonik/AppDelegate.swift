//
//  AppDelegate.swift
//  Tonik
//
//  Created by Wesley Espinoza on 8/29/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // NOTE: Sets a UIWindow to window
        window = UIWindow(frame: UIScreen.main.bounds)
        // NOTE: TheViewControllers are instanciated with corresponding images
        
        let home = HomeViewController()
        var homeIcon = UIImage(named: "home")
        homeIcon = homeIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        home.view.backgroundColor = .white
        home.tabBarItem = UITabBarItem(title: "Home", image: homeIcon, tag: 0)
        
        home.setUp()
        
        let profile = ProfileViewController()
        var profileIcon = UIImage(named: "profile")
        profileIcon = profileIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        profile.view.backgroundColor = .white
        profile.tabBarItem = UITabBarItem(title: "Profile", image: profileIcon, tag: 1)
            
        let settings = SettingsViewController()
        var settingsIcon = UIImage(named: "settings")
        settingsIcon = settingsIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        settings.view.backgroundColor = .white
        settings.tabBarItem = UITabBarItem(title: "Settings", image:settingsIcon, tag: 2)
        
        // NOTE: set up of the TabBarController and adding the viewControllers
        let tabBarController = TabBarController()
        tabBarController.viewControllers = [home, profile, settings]
        tabBarController.selectedIndex = 0
        
        // NOTE: Setting the root
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()

        return true
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

extension UIImage {
    
    func scaled(with scale: CGFloat) -> UIImage? {
        // size has to be integer, otherwise it could get white lines
        let size = CGSize(width: floor(self.size.width * scale), height: floor(self.size.height * scale))
        UIGraphicsBeginImageContext(size)
        draw(in: CGRect(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}

