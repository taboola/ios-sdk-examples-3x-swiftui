//
//  NativeUnitSwiftUI.swift
//  QAApp
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI
import TaboolaSDK

struct NativeUnitSwiftUI: UIViewRepresentable {
    
    private let item: TBLNativeItem
    private let width: CGFloat
        
    /// Initializer for SwiftUI native unit.
    /// - Parameters:
    ///   - item: a native item reference to fill data in the unit.
    ///   - width: a target width for current unit.
    init(_ item: TBLNativeItem, targetWidth width: CGFloat) {
        self.item = item
        self.width = width
    }
    
    func makeUIView(context: Context) -> NativeContentView {
        let view = NativeContentView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setContentHuggingPriority(.required, for: .horizontal)
        
        item.initTitleView(view.titleLabel)
        item.initThumbnailView(view.imageView)
        item.initBrandingView(view.brandingLabel)
        
        return view
    }
    
    func updateUIView(_ uiView: NativeContentView, context: Context) {
        uiView.updateLayout(targetWidth: width)
    }
}
