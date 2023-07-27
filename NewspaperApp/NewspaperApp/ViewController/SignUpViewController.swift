//
//  SignUpViewController.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 27/07/2023.
//

import UIKit

class SignUpViewController: UIViewController {

    
    @IBOutlet weak var txtFullName: UITextField!
    @IBOutlet weak var SignUpView: UIView!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var txtPassword2: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor(red: 32, green: 82, blue: 84, alpha: 1.0)
        SignUpView.layer.cornerRadius = 50
        
        btnLogin.backgroundColor = UIColor(red: 32/255, green: 82/255, blue: 84/255, alpha: 1.0)
        btnLogin.layer.cornerRadius = 10
        
        var checkFullName = "Họ tên không hợp lệ"
        var checkEmail = "Email không hợp lệ"
        var checkPassword = "Mật khẩu không hợp lệ"
        var checkPassword2 = "Mật khẩu nhập lại không khớp"
        
        let lblFullNameInvalid = UILabel(frame: CGRect(x: (txtFullName.frame.minX + 7), y: (txtFullName.frame.minY + 25), width: txtFullName.frame.width, height: txtFullName.frame.height))
        lblFullNameInvalid.text = "\(checkFullName)"
        lblFullNameInvalid.textColor = .red
        lblFullNameInvalid.font = UIFont.systemFont(ofSize: 10)
        self.SignUpView.addSubview(lblFullNameInvalid)
        
        let lblEmailInvalid = UILabel(frame: CGRect(x: (txtEmail.frame.minX + 7), y: (txtEmail.frame.minY + 25), width: txtEmail.frame.width, height: txtEmail.frame.height))
        lblEmailInvalid.text = "\(checkEmail)"
        lblEmailInvalid.textColor = .red
        lblEmailInvalid.font = UIFont.systemFont(ofSize: 10)
        self.SignUpView.addSubview(lblEmailInvalid)
        
        let lblPasswordInvalid = UILabel(frame: CGRect(x: (txtPassword.frame.minX + 7), y: (txtPassword.frame.minY + 25), width: txtPassword.frame.width, height: txtPassword.frame.height))
        lblPasswordInvalid.text = "\(checkPassword)"
        lblPasswordInvalid.textColor = .red
        lblPasswordInvalid.font = UIFont.systemFont(ofSize: 10)
        self.SignUpView.addSubview(lblPasswordInvalid)
        
        let lblPassword2Invalid = UILabel(frame: CGRect(x: (txtPassword2.frame.minX + 7), y: (txtPassword2.frame.minY + 25), width: txtPassword2.frame.width, height: txtPassword2.frame.height))
        lblPassword2Invalid.text = "\(checkPassword2)"
        lblPassword2Invalid.textColor = .red
        lblPassword2Invalid.font = UIFont.systemFont(ofSize: 10)
        self.SignUpView.addSubview(lblPassword2Invalid)
        
    }
    
    @IBAction func btnGoToLoginScreen(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
