//
//  ClassicPageWrapper.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import TaboolaSDK

protocol ClassicPageWrapperDelegate: AnyObject {
    func didLoadWithHeight(height: CGFloat)
}

class ClassicPageWrapper: NSObject, TBLClassicPageDelegate {
        
    var page: TBLClassicPage!
    @Weak var delegates: [Coordinator]
    
    let reusableViewsQueue = ReusableViewsQueue<String, TBLClassicUnit>()
    
    init(pageType: String, pageUrl: String) {
        super.init()

        page = TBLClassicPage(pageType: pageType, pageUrl: pageUrl, delegate: self, scrollView: nil)
        page.pageExtraProperties = ["disableScrollIntercept": NSNumber(value: true)]
    }
    
    // MARK: - TBLClassicPageDelegate
    
    func classicUnit(_ classicUnit: UIView!,
                     didLoadOrResizePlacementName placementName: String!,
                     height: CGFloat,
                     placementType: PlacementType) {
        let delegates = delegates.filter { placementName.contains($0.unit.placement) }
        delegates.forEach { $0.didLoadWithHeight(height: height) }
    }
    
    func classicUnit(_ classicUnit: UIView!,
                     didClickPlacementName placementName: String!,
                     itemId: String!,
                     clickUrl: String!,
                     isOrganic organic: Bool) -> Bool {
        return organic
    }
}
