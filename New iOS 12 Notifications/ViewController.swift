//
//  ViewController.swift
//  New iOS 12 Notifications
//
//  Created by Andrew Jaffee on 6/30/18.
//  Copyright © 2018 Andrew Jaffee. All rights reserved.
//

import UIKit

// SDK required for notifications
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // #1.1 - Create "the notification's category value--its type."
        let bankingAppIntroCategory = UNNotificationCategory(identifier: "com.domain.bankingAppIntro", actions: [], intentIdentifiers: [], options: [])
        // #1.2 - Register the notification type.
        UNUserNotificationCenter.current().setNotificationCategories([bankingAppIntroCategory])

    }

    @IBAction func sendNotifyButtonTapped(_ sender: Any) {
    
        // find out what are the user's notification preferences
        UNUserNotificationCenter.current().getNotificationSettings { (settings) in
            
            // we're only going to create and schedule a notification
            // if the user has kept notifications authorized for this app
            guard (settings.authorizationStatus == .authorized ||
                   settings.authorizationStatus == .provisional) else { return }

            // create the content and style for the local notification
            let content = UNMutableNotificationContent()
            
            // #2.1 - "Assign a value to this property that matches the identifier
            // property of one of the UNNotificationCategory objects you
            // previously registered with your app."
            content.categoryIdentifier = "com.domain.bankingAppIntro"
            
            // create the notification's content to be presented
            // to the user
            content.title = "Welcome to app-based banking."
            content.subtitle = "We can keep you up-to-date."
            content.body = "How would like to get reminders about your bill, notices about unusual activity, free tips about security, and more?"
            content.sound = UNNotificationSound.default
            
            // #2.2 - create a "trigger condition that causes a notification
            // to be delivered after the specified amount of time elapses";
            // deliver after 10 seconds
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
            
            // create a "request to schedule a local notification, which
            // includes the content of the notification and the trigger conditions for delivery"
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            // "Upon calling this method, the system begins tracking the
            // trigger conditions associated with your request. When the
            // trigger condition is met, the system delivers your notification."
            UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
        
        } // end getNotificationSettings
        
    } // end func sendNotifyButtonTapped
    
} // end class ViewController

