//
//  APIHandler.swift
//  NewspaperApp
//
//  Created by Nguyễn Mạnh Linh on 02/08/2023.
//

import Foundation
import Alamofire

class APIHandler{
    
    let BASE_REGISTER_ACCOUNT = "http://:3000/accounts/register"
    let BASE_LOGIN_ACCOUNT = "http://:3000/accounts/login"
    let BASE_CHANGPASSWORD_ACCOUNT = "http://:3000/accounts/changePassword"
    
    func registerAccount(fullName: String, email: String, password: String, completion: @escaping(Bool) -> ()){
        let parameters: [String: Any] = [
            "full_name": fullName,
            "email": email,
            "password_of_user": password
        ]
        AF.request("\(BASE_REGISTER_ACCOUNT)", method: .post, parameters: parameters, encoding: JSONEncoding.default).response { response in
            if response.error == nil {
                completion(true)
            } else {
                completion(false)
            }
        }
    }

    func loginAccount(email: String, password: String, completion: @escaping(Bool, [String: Any]?) -> ()){
        let parameters: [String: Any] = [
            "email": email,
            "password_of_user": password
        ]
        AF.request("\(BASE_LOGIN_ACCOUNT)", method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success(let json):
                if let accountJson = json as? [String: Any] {
                    completion(true, accountJson)
                } else {
                    completion(false, nil)
                }
            case .failure(let error):
                print("Đăng nhập thất bại: \(error)")
                completion(false, nil)
            }
        }
    }
    func changePasswordAccount(email: String, oldPassword: String, newPassword: String, completion: @escaping(Bool) -> ()) {
        let parameters: [String: Any] = [
            "email": email,
            "oldPassword": oldPassword,
            "newPassword": newPassword
        ]
        
        AF.request("\(BASE_CHANGPASSWORD_ACCOUNT)", method: .put, parameters: parameters, encoding: JSONEncoding.default).response { response in
            if response.error == nil {
                completion(true)
            } else {
               completion(false)
            }
        }
    }
    
    func loginWithFacebook(accessToken: String, completion: @escaping(Bool, [String: Any]?) -> ()) {
        let parameters: [String: Any] = [
            "access_token": accessToken
        ]
        
        AF.request("http://your-api-url-here/accounts/loginWithFacebook", method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
            switch response.result {
            case .success(let json):
                if let accountJson = json as? [String: Any] {
                    completion(true, accountJson)
                } else {
                    completion(false, nil)
                }
            case .failure(let error):
                print("Đăng nhập bằng Facebook thất bại: \(error)")
                completion(false, nil)
            }
        }
    }
}


