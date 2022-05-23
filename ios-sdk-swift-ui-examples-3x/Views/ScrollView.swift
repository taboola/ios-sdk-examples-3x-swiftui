//
//  ScrollView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct ScrollViewView: View {
    
    let title: String
    var pageWrapper = TBLClassicPageWrapper(pageType: Constants.article,
                                            pageUrl: Constants.pageUrl)
    
    @State var topHeight: CGFloat = 0
    @State var feedHeight: CGFloat = 0
    
    var body: some View {
        ScrollView {
            LoremText()
            ClassicUnitSwiftUI(pageWrapper: pageWrapper,
                               placement: Constants.widgetPlacement,
                               mode: Constants.mode,
                               height: $topHeight).frame(height: topHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            LoremText()
            ClassicUnitSwiftUI(pageWrapper: pageWrapper,
                               placement: Constants.feedPlacement,
                               mode: Constants.mode,
                               height: $feedHeight).frame(height: feedHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
        .navigationBarTitle(title)
    }
}

struct ScrollViewView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView(title: "ScrollView")
    }
}
