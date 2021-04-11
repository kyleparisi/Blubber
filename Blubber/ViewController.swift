//
//  ViewController.swift
//  Buildapart
//
//  Created by Kyle Parisi on 5/1/19.
//  Copyright © 2019 te0. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    let url = "https://blubber.te0.io/dashboard"


    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self;
        let request = URLRequest(url: URL(string: url)!)
        webView.customUserAgent = "Blubber-iOS"
        webView.load(request)
        
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refreshWebView(_:)), for: UIControl.Event.valueChanged)
        webView.scrollView.addSubview(refreshControl)
        webView.scrollView.bounces = true
    }
    
    @objc
    func refreshWebView(_ sender: UIRefreshControl? = nil) {
        print("Refresh")
        webView?.reload()
        sender?.endRefreshing()
    }
    
}

