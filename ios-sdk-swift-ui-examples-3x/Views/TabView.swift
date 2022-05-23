//
//  TabViewView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct TabViewView: View {
    let title: String
    @State var selectedIndex = 0

    var body: some View {
        TabView(selection: $selectedIndex) {
            ForEach(0..<3) { _ in
                VStackView(title: "\(selectedIndex)")
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("\(selectedIndex)")
                }
            }
        }
        .navigationBarTitle(title)
    }
}

struct TabViewView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewView(title: "TabView")
    }
}
