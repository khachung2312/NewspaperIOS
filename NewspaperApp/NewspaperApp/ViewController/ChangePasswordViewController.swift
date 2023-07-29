//
//  ChangePasswordViewController.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 29/07/2023.
//

import UIKit

class ChangePasswordViewController: UIViewController {

    @IBOutlet weak var ChangePasswordView: UIView!
    @IBOutlet weak var btnConfirmChangPassword: UIButton!
    @IBOutlet weak var txtNewPassword2: UITextField!
    @IBOutlet weak var txtNewPassword: UITextField!
    @IBOutlet weak var txtOldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var checkOldPassword = "Mật khẩu cũ không đúng"
        var checkNewPassword = "Mật khẩu mới không hợp lệ"
        var checkNewPassword2 = "Mật khẩu mới không khớp"
        
        self.setBackgroundColor(red: 32, green: 82, blue: 84, alpha: 1.0)
        ChangePasswordView.layer.cornerRadius = 50
        
        btnConfirmChangPassword.backgroundColor = UIColor(red: 32/255, green: 82/255, blue: 84/255, alpha: 1.0)
        btnConfirmChangPassword.layer.cornerRadius  = 10
        
        self.ChangePasswordView.addInvalidLabel(text: "\(checkNewPassword)", for: txtOldPassword)
        self.ChangePasswordView.addInvalidLabel(text: "\(checkNewPassword)", for: txtNewPassword)
        self.ChangePasswordView.addInvalidLabel(text: "\(checkNewPassword2)", for: txtNewPassword2)
        
    }

}
