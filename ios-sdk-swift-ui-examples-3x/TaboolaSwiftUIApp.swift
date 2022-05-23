//
//  TaboolaSwiftUIApp.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI
import TaboolaSDK

@main
struct TaboolaSwiftUIApp: App {
    
    init() {
        setupTaboola()
    }
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

extension TaboolaSwiftUIApp {
    func setupTaboola() {
        let publisherInfo = TBLPublisherInfo.init(publisherName: "sdk-tester-rnd")
        Taboola.initWith(publisherInfo)
        Taboola.setLogLevel(.debug)
    }
}
