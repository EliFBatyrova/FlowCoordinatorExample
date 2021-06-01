//
//  AppDelegate.swift
//  FlowCoordinatorExample
//
//  Created by Elina Batyrova on 31.10.2020.
//

import UIKit
import Firebase
import FirebaseAnalytics
import FirebaseCrashlytics

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        FirebaseApp.configure()
        
        Analytics.setUserID("12345")
        Analytics.setUserProperty("Red", forName: "favorite_color")
        
        Crashlytics.crashlytics().setUserID("12345")
        Crashlytics.crashlytics().setCustomValue("special_event", forKey: "event")
        
        let userInfo = [
            NSLocalizedDescriptionKey: "The request failed.",
            NSLocalizedFailureReasonErrorKey: "The response returned 404.",
            "Screen": "EnterName"
        ]
        
        let error = NSError.init(domain: NSCocoaErrorDomain,
                                 code: -1001,
                                 userInfo: userInfo)
        
        Crashlytics.crashlytics().record(error: error)
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

