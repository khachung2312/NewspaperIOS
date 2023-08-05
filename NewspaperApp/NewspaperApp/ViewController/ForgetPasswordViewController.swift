//
//  ForgetPasswordViewController.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 28/07/2023.
//

import UIKit

class ForgetPasswordViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var btnConfirmFP: UIButton!
    @IBOutlet weak var ForgetPasswordView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var checkEmail = "Email không hợp lệ"
        
        self.setBackgroundColor(red: 32, green: 82, blue: 84, alpha: 1.0)
        ForgetPasswordView.layer.cornerRadius = 50
        
        btnConfirmFP.backgroundColor = UIColor(red: 32/255, green: 82/255, blue: 84/255, alpha: 1.0)
        btnConfirmFP.layer.cornerRadius = 10
        
       // self.ForgetPasswordView.addInvalidLabel(text: "\(checkEmail)", for: txtEmail)
    }
    
}
