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
        
        self.LoginView.addInvalidLabel(text: "\(checkEmail)", for: txtEmail)
        self.LoginView.addInvalidLabel(text: "\(checkPassword)", for: txtPassword)
      
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
