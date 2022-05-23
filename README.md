# Taboola iOS SDK SwiftUI Examples

Taboola SDK allows publishers to display Taboola's Widgets and Feed within their iOS apps.

## WARNING

Full support of SwiftUI support will be part of the 3.6.4 release. Temporary, you can utilize 3.6.3 for testing purposes but there are several memory leaks in Taboola SDK that shouldn't be part of your production code.

## Getting Started
To get started with the Taboola iOS SDK, please follow this link [iOS SDK documentation](https://sdk.taboola.com/taboolasdk/docs/taboola-ios-sdk-install?ref=github).
SwiftUI provides a new way of composing layout by following declaritive approach. This tutorial encompasses basics UI components like ListView, ScrollView, VStackView etc. with Taboola placements.
Also, we embedded several essential components which help combine Taboola placement and SwiftUI in an easy way with less effort (see **Adaptors** and **Helpers** folder in the project directory).

## Important
In the light of Taboola SDK + SwiftUI integration, we identified several issues which should be addressed on the SDK side and the SwiftUI framework itself.

SwiftUI issues:
* **TabView** with page style breaks the layout upon orientation change;
* The `makeUIView(context:)` function is called several times in **LazyVStack**, **LazyVGrid**.

Taboola SDK issues:
* Firing _visible_ BI events of non-visible Feed's items in **ListView**;
* Sending several _visible_ events of Feed's items after tapping on **Widget** unit without actual scrolling.

Stay tuned for the new updates of Taboola SDK as we have plans to provide a more convenient way of using SwiftUI integration. For now, use this project as a start point of finding the right SwiftUI integration for your app and please let us know if you find any new issues. We're thrilled to make SwiftUI + Taboola SDK integration better together.

## Change log
Taboola iOS SDK [change log](https://developers.taboola.com/taboolasdk/docs/ios-changelog).

## Contact Us
If you wish to integrate Taboola SDK into any commercial applications, please [contact us](https://www.taboola.com/contact?ref=taboola_sdk_github_examples).
For more information and support, please contact your dedicated account manager

## Legal
Using the example code in the repository is subject to Taboola [terms of use](https://www.taboola.com/terms-of-use) and [privacy policy](https://www.taboola.com/privacy-policy).