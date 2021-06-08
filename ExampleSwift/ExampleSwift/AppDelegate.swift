//
//  AppDelegate.swift
//  ExampleSwift
//
//  Created by Arnab Pal on 09/05/20.
//  Copyright © 2020 RudderStack. All rights reserved.
//

import UIKit
import Rudder

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let builder: RSConfigBuilder = RSConfigBuilder()
            .withLoglevel(RSLogLevelDebug)
            .withDataPlaneUrl("https://028ca7ca5687.ngrok.io")
            .withTrackLifecycleEvens(true)
            .withRecordScreenViews(true)
        RSClient.getInstance("1pcZviVxgjd3rTUUmaTUBinGH0A", config: builder.build())
        let option: RSOption = RSOption();
        option.putIntegration("Amplitude", isEnabled: false)
        
        // Creating Dimensions Object
        let dimensions: Dimensions = Dimensions.init(height: 10, length: 10, width: 10)
        
        // Making Signin Failed Call
        TypewriterAnalytics.signInFailed(dimensions: dimensions, id: "4009", numAttempts: 21, rememberMe: false)
        TypewriterAnalytics.signInFailed(dimensions: dimensions, id: "4009", numAttempts: 21, rememberMe: false, options:option);
        
        // Making Signin Submitted call
        TypewriterAnalytics.signInSubmitted(id: "4010", numAttempts: 22, rememberMe: true)
        TypewriterAnalytics.signInSubmitted(id: "4010", numAttempts: 22, rememberMe: true)
        
        // Making Signin Suceeded call
        TypewriterAnalytics.signInSucceeded(id: "4011", numAttempts: 23, rememberMe: false)
        TypewriterAnalytics.signInSucceeded(id: "4011", numAttempts: 23, rememberMe: false, options: option)
        
        // Making User Signed out call
        TypewriterAnalytics.userSignedOut(id: "4012", numAttempts: 24, rememberMe: true)
        TypewriterAnalytics.userSignedOut(id: "4012", numAttempts: 24, rememberMe: true, options: option);
        
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

