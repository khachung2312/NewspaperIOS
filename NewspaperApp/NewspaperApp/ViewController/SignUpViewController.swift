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
    
        self.SignUpView.addInvalidLabel(text: "\(checkFullName)", for: txtFullName)
        self.SignUpView.addInvalidLabel(text: "\(checkEmail)", for: txtEmail)
        self.SignUpView.addInvalidLabel(text: "\(checkPassword)", for: txtPassword)
        self.SignUpView.addInvalidLabel(text: "\(checkPassword2)", for: txtPassword2)
        
    }
    
    @IBAction func btnGoToLoginScreen(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
}
