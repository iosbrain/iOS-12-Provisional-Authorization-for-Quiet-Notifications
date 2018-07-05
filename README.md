# iOS-12-Provisional-Authorization-for-Quiet-Notifications
An Xcode 10 **beta** 2 project, written in Swift 4.2, demonstrating how to configure iOS 12 **beta** 2 provisional authorization for "Deliver Quietly" notifications.

In this repo's [corresponding tutorial](http://iosbrain.com/blog/2018/07/05/new-in-ios-12-implementing-provisional-authorization-for-quiet-notifications-in-swift/), I'll explain how, With iOS 12, Apple fine-tuned the notification authorization process and expanded   notification delivery options, giving developers the ability to build apps with high opt-in, reaction, and retention rates, thus leading to potentially higher revenues. The company announced these new features during a WWDC 2018 presentation entitled ["What's New in User Notifications."](https://developer.apple.com/videos/play/wwdc2018/710/) You now have the ability to start sending notifications without explicit permission, i.e., on a trial basis. Apple calls this new notification management protocol ["provisional authorization"](https://developer.apple.com/videos/play/wwdc2018/710/) which is closely related to a feature they've named ["deliver quietly."](https://developer.apple.com/videos/play/wwdc2018/710/) App developers should study Apple's new documentation on these features as they are likely to increase opt-in rates for local and push notifications, potentially leading to increased revenues. In this tutorial, I'll show you how to encode these new notification features using software released to developers just fifteen days ago (June 19), specifically iOS 12 beta 2 and Xcode 10 beta 2 (which includes Swift 4.2). [Continue reading...](http://iosbrain.com/blog/2018/07/05/new-in-ios-12-implementing-provisional-authorization-for-quiet-notifications-in-swift/)

Here's a sample of the "Deliver Quietly" notification:

![alt text][logo1]

[logo1]: http://iosbrain.com/blog/wp-content/uploads/2018/07/Deliver-Prov-Notifs.gif "Deliver Quietly"

## Xcode 9 project settings
**To get this project running on the Simulator or a physical device (iPhone, iPad)**, go to the following locations in Xcode and make the suggested changes:

1. Project Navigator -> [Project Name] -> Targets List -> TARGETS -> [Target Name] -> General -> Signing
- [ ] Tick the "Automatically manage signing" box
- [ ] Select a valid name from the "Team" dropdown
  
2. Project Navigator -> [Project Name] -> Targets List -> TARGETS -> [Target Name] -> General -> Identity
- [ ] Change the "com.yourDomainNameHere" portion of the value in the "Bundle Identifier" text field to your real reverse domain name (i.e., "com.yourRealDomainName.Project-Name"). 
