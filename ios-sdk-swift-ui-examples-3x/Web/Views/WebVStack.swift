//
//  WebVStack.swift
//  QAApp
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI

struct WebVStack: View {
    
    init(title: String, embeddedInContainer: Bool = false) {
        self.title = title
        self.embeddedInContainer = embeddedInContainer
        pageWrapper = WebPageWrapper()
    }
    
    private let title: String
    private let embeddedInContainer: Bool
    private let pageWrapper: WebPageWrapper
        
    var body: some View {
        VStack {
            WebUnitSwiftUI(pageWrapper: pageWrapper)
            Button("Fetch All") {
                pageWrapper.page.fetchAllUnitsContent()
            }
            
            if embeddedInContainer {
                Spacer(minLength: 40)
            }
        }
        .navigationBarTitle(title)
    }
}

struct WebVStack_Previews: PreviewProvider {
    static var previews: some View {
        WebVStack(title: "WebVStack")
    }
}
