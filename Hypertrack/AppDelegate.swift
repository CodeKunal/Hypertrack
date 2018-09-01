//
//  AppDelegate.swift
//  Hypertrack
//
//  Created by Kunal arora on 01/09/18.
//  Copyright © 2018 Kunal arora. All rights reserved.
//

import UIKit
import HyperTrack

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //HyperTrack.initialize("YOUR_PUBLISHABLE_KEY")
        // Make sure to go to the Info tab in your app settings
        // and add permission strings for "Privacy - Location Always Usage Description"
        // and "Privacy - Motion Usage Description"
        HyperTrack.initialize(publishableKey: "pk_46284e60817285f42d5e1f3d57f687e955b90d39") { (error) in
            /// perform post initialization actions
            /// handle error if any
        }

        HyperTrack.requestLocationPermission { (error) in
            /// handle error if any
        }
        ​​
        HyperTrack.requestActivityPermission { (error) in
            /// handle error if any
        }

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

