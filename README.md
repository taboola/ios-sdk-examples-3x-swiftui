# Taboola iOS SDK SwiftUI Examples

Taboola SDK allows publishers to display Taboola's Widgets and Feed within their iOS apps.

## Getting Started
To get started with the Taboola iOS SDK, please follow this link [iOS SDK documentation](https://sdk.taboola.com/taboolasdk/docs/taboola-ios-sdk-install?ref=github).
SwiftUI provides a new way of composing layout by following declaritive approach. This tutorial encompasses basics UI components like ListView, ScrollView, VStackView etc. with Taboola placements.
Also, we embedded several essential components which help combine Taboola placement and SwiftUI in an easy way with less effort (see **Adaptors** and **Helpers** folder in the project directory).

## Important!
We are in the process of working out the following outstanding issues with Taboola SDK and the SwiftUI integration

* **TabView** with page style breaks the layout upon orientation change;
* The `makeUIView(context:)` function is called several times in **LazyVStack**, **LazyVGrid**.
* Some viewability measurements fired inconsistently 

Please follow our documention, change log and this project for more updates. 

## Change log
Taboola iOS SDK [change log](https://developers.taboola.com/taboolasdk/docs/ios-changelog).

## Contact Us
If you wish to integrate Taboola SDK into any commercial applications, please [contact us](https://www.taboola.com/contact?ref=taboola_sdk_github_examples).
For more information and support, please contact your dedicated account manager

## Legal
Using the example code in the repository is subject to Taboola [terms of use](https://www.taboola.com/terms-of-use) and [privacy policy](https://www.taboola.com/privacy-policy).
