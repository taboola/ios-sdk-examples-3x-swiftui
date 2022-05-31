//
//  TaboolaView.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import TaboolaSDK
import SwiftUI

protocol ClassicUnitProvidable {
    var unit: ClassicUnitSwiftUI { get }
}

struct ClassicUnitSwiftUI: UIViewRepresentable {
    
    let pageWrapper: ClassicPageWrapper
    let placement: String
    let mode: String
    
    @Binding var height: CGFloat
    
    func makeUIView(context: Context) -> TBLClassicUnit {
        if let dequeuedUnit = pageWrapper.reusableViewsQueue.dequeue(for: placement) {
            return dequeuedUnit
        }
        
        let classicUnit = pageWrapper.page.createUnit(withPlacementName: placement, mode: mode)
        pageWrapper.reusableViewsQueue.register(classicUnit, for: placement)
        pageWrapper.delegates.append(context.coordinator)

        classicUnit.fetchContent()
        
        return classicUnit
    }
    
    func updateUIView(_ uiView: TBLClassicUnit, context: Context) {
        // update view if needed
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
}

@available(iOS 13.0, *)
class Coordinator: NSObject, ClassicPageWrapperDelegate, ClassicUnitProvidable {
    
    var unit: ClassicUnitSwiftUI
 
    init(_ unit: ClassicUnitSwiftUI) {
        self.unit = unit
    }
    
    func didLoadWithHeight(height: CGFloat) {
        unit.height = height
    }
}
