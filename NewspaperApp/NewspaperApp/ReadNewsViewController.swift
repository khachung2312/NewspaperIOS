//
//  ReadNewsViewController.swift
//  NewspaperApp
//
//  Created by Khắc Hùng on 26/07/2023.
//

import UIKit
import WebKit

class ReadNewsViewController: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        webview.loadHTMLString("X<h1 style='color: red'>Xin chào </h1>", baseURL: nil)
        // Do any additional setup after loading the view.
    }
    

    

}
