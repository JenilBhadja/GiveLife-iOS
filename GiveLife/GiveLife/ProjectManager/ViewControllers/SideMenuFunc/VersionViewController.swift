//
//  VersionViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 17/05/22.
//

import UIKit
import WebKit

class VersionViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL (string: "https://jenilbhadja.me/")
        let request = URLRequest(url: url!)
        webView.load(request)
        
    }
    
}
