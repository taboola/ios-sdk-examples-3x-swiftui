//
//  LazyVStackView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct LazyVStackView: View {

    let title: String
    let pageWrapper = ClassicPageWrapper(pageType: Constants.article,
                                         pageUrl: Constants.pageUrl)
    
    @State var topHeight: CGFloat = 0
    @State var feedHeight: CGFloat = 0
    
    var body: some View {
        ScrollView {
            LazyVStack {
                LoremText()
                ClassicUnitSwiftUI(pageWrapper: pageWrapper,
                                   placement: Constants.widgetPlacement,
                                   mode: Constants.mode,
                                   height: $topHeight).frame(height: topHeight)
                LoremText()
                ClassicUnitSwiftUI(pageWrapper: pageWrapper,
                                   placement: Constants.feedPlacement,
                                   mode: Constants.mode,
                                   height: $feedHeight).frame(height: feedHeight)
            }
        }
        .navigationBarTitle(title)
    }
}

struct LazyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        LazyVStackView(title: "LazyVStackView")
    }
}
