//
//  AppDelegate.swift
//  blackbook
//
//  Created by Turner Thornberry on 7/3/19.
//  Copyright © 2019 personal. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 20)!
        ]
        
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 20)!], for: UIControl.State.normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSAttributedString.Key.font: UIFont(name: "Avenir Next Medium", size: 20)!], for: UIControl.State.highlighted)

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}


//extension UINavigationBar
//{
//    /// Applies a background gradient with the given colors
//    func applyNavigationGradient( colors : [UIColor]) {
//        var frameAndStatusBar: CGRect = self.bounds
//        frameAndStatusBar.size.height += 20 // add 20 to account for the status bar
//
//        setBackgroundImage(UINavigationBar.gradient(size: frameAndStatusBar.size, colors: colors), for: .default)
//    }
//
//    /// Creates a gradient image with the given settings
//    static func gradient(size : CGSize, colors : [UIColor]) -> UIImage?
//    {
//        // Turn the colors into CGColors
//        let cgcolors = colors.map { $0.cgColor }
//
//        // Begin the graphics context
//        UIGraphicsBeginImageContextWithOptions(size, true, 0.0)
//
//        // If no context was retrieved, then it failed
//        guard let context = UIGraphicsGetCurrentContext() else { return nil }
//
//        // From now on, the context gets ended if any return happens
//        defer { UIGraphicsEndImageContext() }
//
//        // Create the Coregraphics gradient
//        var locations : [CGFloat] = [0.0, 1.0]
//        guard let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: cgcolors as NSArray as CFArray, locations: &locations) else { return nil }
//
//        // Draw the gradient
//        context.drawLinearGradient(gradient, start: CGPoint(x: 0.5, y: 0.0), end: CGPoint(x: 0.5, y: size.height), options: [])
//
//        // Generate the image (the defer takes care of closing the context)
//        return UIGraphicsGetImageFromCurrentImageContext()
//    }
//}
