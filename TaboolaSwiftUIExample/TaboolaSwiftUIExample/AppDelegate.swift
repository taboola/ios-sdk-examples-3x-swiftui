//
//  AppDelegate.swift
//  TaboolaSwiftUIExample
//
//  Created by Tzufit Lifshitz on 18/11/2020.
//  Copyright © 2020 Taboola. All rights reserved.
//

import UIKit
import TaboolaSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Adding Taboola init to the whole application with the unique publisher-name "sdk-tester-demo"
        let publisherInfo = TBLPublisherInfo.init(publisherName: "sdk-tester-demo")

        // Adding Taboola api-key to the whole application with the unique publisher-name "sdk-tester-demo" , required only for SDK Native
        publisherInfo.apiKey = "30dfcf6b094361ccc367bbbef5973bdaa24dbcd6"
        Taboola.initWith(publisherInfo)
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

