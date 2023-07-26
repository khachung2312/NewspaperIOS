//
//  ShareNewsViewController.swift
//  NewspaperApp
//
//  Created by Thanh Dat on 26/07/2023.
//

import UIKit

class ShareNewsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBAction func btnShare(_ sender: Any) {
//        let image = Bundle.main.url(forResource: "image", withExtension: "png")!
       
        let URL = "https://tuoitre.vn/gan-800-ti-dong-tai-tro-phi-loi-nhuan-cho-cac-nha-khoa-hoc-viet-nam-20230726152812158.htm"
  
        let text = "Hello"

        let activityVC = UIActivityViewController(activityItems: [URL, text], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = sender as? UIView
        self.present(activityVC, animated: true, completion: nil)
    }
        
}
