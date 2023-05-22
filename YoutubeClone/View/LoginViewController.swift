//
//  LoginViewController.swift
//  YoutubeClone
//
//  Created by 최지철 on 2023/03/31.
//

import UIKit
import GoogleSignIn


class LoginViewController: UIViewController {
    var UserInfo = userinfo.shared

    func googleLoginPase() { // 로그인 유저 정보를 들고오는 함수입니다~
            GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
                guard error == nil else { return }
                guard let signInResult = signInResult else { return }
                
                let user = signInResult.user
                
                let emailAddress = user.profile?.email
                
                let fullName = user.profile?.name
                let givenName = user.profile?.givenName
                let familyName = user.profile?.familyName
                
                let profilePicUrl = user.profile?.imageURL(withDimension: 320)
                print(emailAddress as Any)
                print(fullName as Any)
                print(givenName as Any)
                print(familyName as Any)
                print(profilePicUrl as Any)
              self.UserInfo.userId = emailAddress
              self.UserInfo.userImg = profilePicUrl?.absoluteString
                let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "HomeTabBarController")
                self.navigationController?.pushViewController(pushVC!, animated: true)
            }
        }
    
    @IBAction func ClickLoginBtn(_ sender: Any) {
        
        GIDSignIn.sharedInstance.signIn(withPresenting: self) { signInResult, error in
            guard error == nil else { return }
            self.googleLoginPase()
          }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

}
