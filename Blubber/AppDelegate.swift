//
//  AppDelegate.swift
//  Blubber
//
//  Created by Kyle Parisi on 7/3/19.
//  Copyright © 2019 te0. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let fileManager = FileManager.default
        let urls = fileManager.urls(for: .applicationSupportDirectory, in: .userDomainMask)
        if let applicationSupportURL = urls.last {
            do{
                try fileManager.createDirectory(at: applicationSupportURL, withIntermediateDirectories: true, attributes: nil)

            }
            catch{
                print(error)
            }
        }
        
        
//        zts_start(String(contentsOf: urls.last!), { (msg: UnsafeMutablePointer<zts_callback_msg>?) -> Void in
//            let network = "8056c2e21c41c161"
//            let nwid = strtoull(network, nil, 16)
//            print(nwid)
//            let eventCode = msg?.pointee.eventCode ?? 0
//            let node = msg?.pointee.node
//            switch eventCode {
//            case ZTS_EVENT_NODE_UP:
//                print("ZTS_EVENT_NODE_UP")
//            case ZTS_EVENT_STACK_UP:
//                print("ZTS_EVENT_STACK_UP")
//            case ZTS_EVENT_NODE_ONLINE:
//                print("ZTS_EVENT_NODE_ONLINE, address=", node?.pointee.address ?? "")
//                zts_join(nwid)
//            case ZTS_EVENT_NODE_OFFLINE:
//                print("ZTS_EVENT_NODE_OFFLINE")
//            case ZTS_EVENT_NODE_DOWN:
//                print("ZTS_EVENT_NODE_DOWN")
//            case ZTS_EVENT_NODE_IDENTITY_COLLISION:
//                print("ZTS_EVENT_NODE_IDENTITY_COLLISION")
//            case ZTS_EVENT_NODE_UNRECOVERABLE_ERROR:
//                print("ZTS_EVENT_NODE_UNRECOVERABLE_ERROR")
//            case ZTS_EVENT_NODE_NORMAL_TERMINATION:
//                print("ZTS_EVENT_NODE_NORMAL_TERMINATION")
//            case ZTS_EVENT_PEER_P2P:
//                print("ZTS_EVENT_PEER_P2P")
//            case ZTS_EVENT_PEER_RELAY:
//                print("ZTS_EVENT_PEER_RELAY")
//            default:
//                print("Event", eventCode)
//            }
//        }, 9994)
        
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
        let v = window?.rootViewController as! ViewController
        v.refreshWebView()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

}

