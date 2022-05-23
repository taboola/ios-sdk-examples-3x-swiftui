//
//  VStackView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct VStackView: View {

    let title: String
    let pageWrapper = TBLClassicPageWrapper(pageType: Constants.article,
                                            pageUrl: Constants.pageUrl)
    
    @State var topHeight: CGFloat = 0
    @State var feedHeight: CGFloat = 0
    
    var body: some View {
        ScrollView {
            VStack {
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

struct VStackView_Previews: PreviewProvider {
    static var previews: some View {
        VStackView(title: "VStackView")
    }
}