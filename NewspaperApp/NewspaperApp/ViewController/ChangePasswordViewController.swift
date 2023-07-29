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
        
        let lblOldPasswordInvalid = UILabel(frame: CGRect(x:(txtOldPassword.frame.minX + 7), y: (txtOldPassword.frame.minY + 25), width: txtOldPassword.frame.width, height: txtOldPassword.frame.height))
        
        lblOldPasswordInvalid.text = "\(checkNewPassword)"
        lblOldPasswordInvalid.textColor = .red
        lblOldPasswordInvalid.font =  UIFont.systemFont(ofSize: 10)
        self.ChangePasswordView.addSubview(lblOldPasswordInvalid)
        
        let lblNewPasswordInvalid = UILabel(frame: CGRect(x:(txtNewPassword.frame.minX + 7), y: (txtNewPassword.frame.minY + 25), width: txtNewPassword.frame.width, height: txtNewPassword.frame.height))
        
        lblNewPasswordInvalid.text = "\(checkOldPassword)"
        lblNewPasswordInvalid.textColor = .red
        lblNewPasswordInvalid.font =  UIFont.systemFont(ofSize: 10)
        self.ChangePasswordView.addSubview(lblNewPasswordInvalid)
        
        
        let lblNewPassword2Invalid = UILabel(frame: CGRect(x:(txtNewPassword2.frame.minX + 7), y: (txtNewPassword2.frame.minY + 25), width: txtNewPassword2.frame.width, height: txtNewPassword2.frame.height))
        
        lblNewPassword2Invalid.text = "\(checkNewPassword2)"
        lblNewPassword2Invalid.textColor = .red
        lblNewPassword2Invalid.font =  UIFont.systemFont(ofSize: 10)
        self.ChangePasswordView.addSubview(lblNewPassword2Invalid)
        
    }

}
