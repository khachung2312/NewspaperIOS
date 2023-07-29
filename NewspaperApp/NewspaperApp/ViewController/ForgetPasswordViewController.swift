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
        
        let lblEmailInvalid = UILabel(frame: CGRect(x:(txtEmail.frame.minX + 7), y: (txtEmail.frame.minY + 25), width: txtEmail.frame.width, height: txtEmail.frame.height))
        lblEmailInvalid.text = "\(checkEmail)"
        lblEmailInvalid.textColor = .red
        lblEmailInvalid.font =  UIFont.systemFont(ofSize: 10)
        self.ForgetPasswordView.addSubview(lblEmailInvalid)
    }
    
}
