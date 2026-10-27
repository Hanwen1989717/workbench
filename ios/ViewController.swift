//  ViewController.swift
//  财务工作台

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    // 替换成你的工作台线上地址
    let workbenchURL = URL(string: "https://4ma5gbneg5009.doubaolink.com/")!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        webView.load(URLRequest(url: workbenchURL))
        webView.allowsBackForwardNavigationGestures = true
    }
}
