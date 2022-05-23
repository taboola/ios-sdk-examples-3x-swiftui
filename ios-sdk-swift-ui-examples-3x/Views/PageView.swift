//
//  PageView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct PageView: View {
    
    let title: String
    let colors: [Color] = [.red, .green, .yellow, .blue]
    
    var body: some View {
        TabView {
            ForEach(0..<4) {
                ScrollViewView(title: title)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(colors[$0 % colors.count])
                    .cornerRadius(8)
            }
        }
        .tabViewStyle(.page)
        .navigationBarTitle(title)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(title: "PageView")
    }
}
