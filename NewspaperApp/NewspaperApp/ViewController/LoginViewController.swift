//
//  LoginViewController.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 26/07/2023.
//

import UIKit
import FacebookLogin
import FBSDKCoreKit

class LoginViewController: UIViewController, UITextFieldDelegate, LoginButtonDelegate {
    
    
    @IBOutlet weak var btnLoginFb: UIButton!
    @IBOutlet weak var LoginView: UIView!
    @IBOutlet weak var btnSignUp: UIButton!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setBackgroundColor(red: 32, green: 82, blue: 84, alpha: 1.0)
        LoginView.layer.cornerRadius = 50
        
        btnLogin.backgroundColor = UIColor(red: 32/255, green: 82/255, blue: 84/255, alpha: 1.0)
        btnLogin.layer.cornerRadius = 10
        
        self.txtEmail.delegate = self
        self.txtPassword.delegate = self
        
        let loginButton = FBLoginButton()
                loginButton.center = view.center
                view.addSubview(loginButton)
        
        if let token = AccessToken.current,
                !token.isExpired {
                // User is logged in, do work such as go to next view controller.
            }
        loginButton.permissions = ["public_profile", "email"]
        Settings.shared.appID = "665992965421456"
        Settings.shared.clientToken = "b1a9c06deb2ff732ab42c792793a0a8a"
        loginButton.delegate = self

    }
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
            if let error = error {
                print("Facebook login error: \(error.localizedDescription)")
                return
            }

            if let token = AccessToken.current, !token.isExpired {
                print("Logged in with Facebook: \(token.userID)")

                // Fetch user data using Graph API
                let request = GraphRequest(graphPath: "me", parameters: ["fields": "id, name, email"], tokenString: token.tokenString, version: nil, httpMethod: .get)
                request.start { (connection, result, error) in
                    if let error = error {
                        print("Graph API request error: \(error.localizedDescription)")
                        return
                    }
                    if let userData = result as? [String: Any] {
                        print("User Data from Facebook: \(userData)")
                    }
                }
            }
        }
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
           print("Logged out from Facebook")
       }
    
    
    func showError(_ message: String) {
        let alert = UIAlertController(title: "Lỗi", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    func showSuccess() {
        let alert = UIAlertController(title: "Thành công", message: "Đăng nhập thành công", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
    
    func checkAndUpdateButtonState() {
        let isEmailInvalid = !(LoginView.viewWithTag(101)?.isHidden ?? true)
        let isPasswordInvalid = !(LoginView.viewWithTag(102)?.isHidden ?? true)
        
        let isButtonEnabled = !(isEmailInvalid || isPasswordInvalid)
        btnLogin.isEnabled = isButtonEnabled
        btnLogin.backgroundColor = isButtonEnabled ? UIColor(red: 32/255, green: 82/255, blue: 84/255, alpha: 1.0) : UIColor.gray
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if textField == txtEmail {
            if isEmailInvalid() {
                if let lblEmailInvalid = LoginView.viewWithTag(101) as? UILabel{
                    lblEmailInvalid.isHidden = true
                }
            }else {
                LoginView.addInvalidLabel(text: "Email không hợp lệ", for: txtEmail, tag: 101)
            }
        }
        if textField == txtPassword {
            if !isPasswordInvalid() {
                if let lblPasswordInvalid = LoginView.viewWithTag(102) as? UILabel{
                    lblPasswordInvalid.isHidden = true
                }
            }else {
                LoginView.addInvalidLabel(text: "Mật khẩu không hợp lệ", for: txtPassword, tag: 102)
            }
        }
        checkAndUpdateButtonState()
    }
    func isEmailInvalid() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        if !emailPredicate.evaluate(with: txtEmail.text) {
            return false
        }
        return true
    }
    func isPasswordInvalid() -> Bool {
        if txtPassword.text!.count > 5 {
            return false
        }
        return true
    }
    
    func callAPILogin(email: String, password: String) {
        let apiHandler = APIHandler()
        apiHandler.loginAccount(email: email, password: password) { (success, account) in
            if success {
                UserDefaults.standard.setValue(account, forKey: "account")
                print(email)
                print(password)
            } else {
                self.showError("Tài khoản hoặc mật khẩu không chính xác")
            }
        }
    }
    
    
    @IBAction func btnToForgotPasswordScreen(_ sender: UIButton) {
        let forgetPasswordScreen = self.storyboard?.instantiateViewController(withIdentifier: "ForgetPasswordVCIdentifier") as! ForgetPasswordViewController
        self.navigationController?.pushViewController(forgetPasswordScreen, animated: true)
    }
    @IBAction func btnToRegisterScreen(_ sender: UIButton) {
        let signupScreen = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVCIdentifier") as! SignUpViewController
        self.navigationController?.pushViewController(signupScreen, animated: true)
    }
    @IBAction func btnLoginConfirm(_ sender: UIButton) {
        guard let email = txtEmail.text?.trimmingCharacters(in: .whitespacesAndNewlines), !email.isEmpty,
              let password = txtPassword.text?.trimmingCharacters(in: .whitespacesAndNewlines), !password.isEmpty else {
            showError("Vui lòng điền đầy đủ thông tin.")
            return
        }
        callAPILogin(email: email, password: password)
        showSuccess()
    }
    @IBAction func btnLoginWithFb(_ sender: UIButton) {
    }

}
