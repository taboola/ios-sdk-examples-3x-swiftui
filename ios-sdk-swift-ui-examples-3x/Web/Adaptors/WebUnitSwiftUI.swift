//
//  WebUnitSwiftUI.swift
//  QAApp
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import SwiftUI
import WebKit
import TaboolaSDK

struct WebUnitSwiftUI: UIViewRepresentable {
    
    let pageWrapper: WebPageWrapper
    
    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.preferences.javaScriptCanOpenWindowsAutomatically = true
        
        let webView = WKWebView(frame: .zero, configuration: config)
        webView.isOpaque = false
        webView.backgroundColor = .clear
        
        pageWrapper.page.createUnit(with: webView)
        
        try? loadPage(in: webView)
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        // update view if needed
    }
    
    private func loadPage(in webView: WKWebView) throws {
        guard let htmlPath = Bundle.main.path(forResource: "SampleHTMLPage", ofType: "html") else {
            assertionFailure("html path should exist!!!")
            return
        }
        
        let appHtml = try String(contentsOfFile: htmlPath, encoding: .utf8)
        webView.loadHTMLString(appHtml, baseURL: URL(string: "https://cdn.taboola.com/mobile-sdk/init/"))
    }
}
