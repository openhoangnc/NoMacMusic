//
//  main.swift
//  nMacMusic
//
//  Created by Nguyen Cong Hoang on 5/19/23.
//

import AppKit

NSWorkspace.shared.notificationCenter.addObserver(forName: NSWorkspace.willLaunchApplicationNotification, object: nil, queue: nil) { notification in
    if let app = notification.userInfo?[NSWorkspace.applicationUserInfoKey] as? NSRunningApplication {
        if app.bundleIdentifier == "com.apple.Music" {
            print("Music app launched. Terminate it...")
            app.forceTerminate()
            print("Terminated")
        }
    }
}

NSApplication.shared.run()
