//
//  LoginViewController.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 26/07/2023.
//

import UIKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var LoginView: UIView!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var checkEmail = "Email không hợp lệ"
        var checkPassword = "Password không hợp lệ"
        
        self.setBackgroundColor(red: 32, green: 82, blue: 84, alpha: 1.0)
        LoginView.layer.cornerRadius = 50
        
        btnLogin.backgroundColor = UIColor(red: 32/255, green: 82/255, blue: 84/255, alpha: 1.0)
        btnLogin.layer.cornerRadius = 10
        
        let lblEmailInvalid = UILabel(frame: CGRect(x:(txtEmail.frame.minX + 7), y: (txtEmail.frame.minY + 25), width: txtEmail.frame.width, height: txtEmail.frame.height))
        
        lblEmailInvalid.text = "\(checkEmail)"
        lblEmailInvalid.textColor = .red
        lblEmailInvalid.font =  UIFont.systemFont(ofSize: 10)
        self.LoginView.addSubview(lblEmailInvalid)
        
        let lblPasswordInvalid = UILabel(frame: CGRect(x: (txtPassword.frame.minX + 7), y: (txtPassword.frame.minY + 25), width: txtPassword.frame.width, height: txtPassword.frame.height))
        lblPasswordInvalid.text = "\(checkPassword)"
        lblPasswordInvalid.textColor = .red
        lblPasswordInvalid.font = UIFont.systemFont(ofSize: 10)
        self.LoginView.addSubview(lblPasswordInvalid)
      
    }
    
    @IBAction func btnGoToForgetPasswordScreen(_ sender: Any) {
        let forgetPasswordScreen = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordVCIdentifier") as! ForgetPasswordViewController
        self.navigationController?.pushViewController(forgetPasswordScreen, animated: true)
    }
    @IBAction func btnGoToSignUpScreen(_ sender: Any) {
        let signupScreen = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVCIdentifier") as! SignUpViewController
        self.navigationController?.pushViewController(signupScreen, animated: true)
    }
}
