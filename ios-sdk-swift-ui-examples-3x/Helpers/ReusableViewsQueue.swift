//
//  ReusableViewsQueue.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import UIKit

protocol ReusableViewsQueueProtocol {
    
    associatedtype Key: Hashable
    associatedtype View: UIView
        
    func dequeue(for key: Key) -> View?
    func register(_ new: View, for key: Key)
}

final class ReusableViewsQueue<Key: Hashable, View: UIView>: ReusableViewsQueueProtocol {
        
    private var views: [Key: View] = [:]
    
    func dequeue(for key: Key) -> View? {
        views[key]
    }
    
    func register(_ new: View, for key: Key) {
        views[key] = new
    }
}
