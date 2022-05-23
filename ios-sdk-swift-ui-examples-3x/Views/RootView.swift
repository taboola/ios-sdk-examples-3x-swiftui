//
//  RootView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 24) {
                NavigationLink(destination: LazyView(ScrollViewView(title: "ScrollView"))) {
                    Text("ScrollView")
                }
                NavigationLink(destination: LazyView(VStackView(title: "VStackView"))) {
                    Text("VStackView")
                }
                NavigationLink(destination: LazyView(ListView(title: "ListView"))) {
                    Text("ListView")
                }
                NavigationLink(destination: LazyView(TabViewView(title: "TabView"))) {
                    Text("TabView")
                }
                NavigationLink(destination: LazyView(LazyVGridView(title: "LazyVGridView"))) {
                    Text("LazyVGridView")
                }
                NavigationLink(destination: LazyView(LazyVStackView(title: "LazyVStackView"))) {
                    Text("LazyVStackView")
                }
                
                // Could be uncommented if your app support only portrait interface orientation.
                // SwiftUI has known issue with orientation changes - https://www.hackingwithswift.com/forums/swiftui/pagetabviewstyle-does-not-play-nicely-on-orientation/10813.
                // NavigationLink(destination: LazyView(PageView(title: "PageView"))) {
                //     Text("PageView")
                // }
            }
            .navigationTitle("Taboola SwiftUI")
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
