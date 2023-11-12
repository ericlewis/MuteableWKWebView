//
//  AppDelegate.swift
//  TestSoundsSwift
//
//  Created by Jinyu Meng on 2023/11/12.
//  Copyright © 2023 Hori,Masaki. All rights reserved.
//

import Cocoa
import WebKit
import MuteableWKWebView

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet var window: NSWindow!
    @IBOutlet weak var webView: WKWebView!
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        webView.load(.init(url: URL(string: "http://youtube.com")!))
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    @IBAction func mute(_ sender: NSButton) {
        webView.isMuted.toggle()
        if webView.isMuted {
            sender.title = "Muted"
        } else {
            sender.title = "Mute"
        }
    }
    
}

