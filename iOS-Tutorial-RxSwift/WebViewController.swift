//
//  WebViewController.swift
//  iOS-Tutorial-RxSwift
//
//  Created by Siam Wannakosit on 10/2/21.
//
import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let stringUrl = URL(string: "https://dtacapp.netlify.app")!
        let urlRequest = URLRequest(url: stringUrl)
        self.webView.load(urlRequest)
    }


}
