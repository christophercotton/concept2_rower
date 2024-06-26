//
//  AppDelegate.swift

//
//  Created by Aschmann, Paul on 9/1/20.
//  Copyright © 2020 Aschmann, Paul. All rights reserved.
//

import UIKit
import Logging

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    public static func ourLogHandler(label: String) -> StreamLogHandler {
        var handler = StreamLogHandler.standardError(label: label)
        handler.logLevel = .debug
        return handler
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        LoggingSystem.bootstrap(AppDelegate.ourLogHandler)
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

