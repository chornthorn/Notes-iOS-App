//
//  LoginViewController.swift
//  Note
//
//  Created by thorn on 4/2/23.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let logoImageVIew = UIImageView()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton()
    let forgotPassword = UILabel()
    let doNotHaveAnAccount = UILabel()
    let singleChildScrollView = UIScrollView()
    let containerOfLoginForm  = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(singleChildScrollView)
        singleChildScrollView.addSubview(containerOfLoginForm)
        containerOfLoginForm.addSubview(usernameTextField)
        containerOfLoginForm.addSubview(passwordTextField)
        containerOfLoginForm.addSubview(loginButton)
        containerOfLoginForm.addSubview(logoImageVIew)
        containerOfLoginForm.addSubview(forgotPassword)
        containerOfLoginForm.addSubview(doNotHaveAnAccount)
        
        
        // snapkit code of singleChildScrollView
        singleChildScrollView.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
        }
        
        // snapkit code of containerOfLoginForm
        containerOfLoginForm.snp.makeConstraints { (make) in
            make.top.equalTo(singleChildScrollView.snp.top)
            make.bottom.equalTo(singleChildScrollView.snp.bottom)
            make.leading.equalTo(singleChildScrollView.snp.leading)
            make.trailing.equalTo(singleChildScrollView.snp.trailing)
            make.centerX.equalTo(singleChildScrollView.snp.centerX)
        }
        
        // snapkit code of logoImageVIew
        logoImageVIew.snp.makeConstraints { (make) in
            make.top.equalTo(containerOfLoginForm.snp.top).inset(100)
            make.centerX.equalTo(containerOfLoginForm.snp.centerX)
            make.width.equalTo(100)
            make.height.equalTo(100)
        }
        
        // snapkit code of usernameTextField
        usernameTextField.snp.makeConstraints { (make) in
            make.top.equalTo(logoImageVIew.snp.bottom).offset(50)
            make.leading.equalTo(containerOfLoginForm.snp.leading).offset(20)
            make.trailing.equalTo(containerOfLoginForm.snp.trailing).offset(-20)
            make.height.equalTo(50)
        }
        
        // snapkit code of passwordTextField
        passwordTextField.snp.makeConstraints { (make) in
            make.top.equalTo(usernameTextField.snp.bottom).offset(20)
            make.leading.equalTo(containerOfLoginForm.snp.leading).offset(20)
            make.trailing.equalTo(containerOfLoginForm.snp.trailing).offset(-20)
            make.height.equalTo(50)
        }
        
        // snapkit code of forgot password
        forgotPassword.snp.makeConstraints { (make) in
            make.top.equalTo(passwordTextField.snp.bottom).offset(8)
            make.trailing.equalTo(containerOfLoginForm.snp.trailing).offset(-20)
        }
        
        
        // snapkit code of loginButton
        loginButton.snp.makeConstraints { (make) in
            make.top.equalTo(forgotPassword.snp.bottom).offset(56)
            make.leading.equalTo(containerOfLoginForm.snp.leading).offset(20)
            make.trailing.equalTo(containerOfLoginForm.snp.trailing).offset(-20)
            make.height.equalTo(50)
        }
        
        // snapkit code of doNotHaveAnAccount
        doNotHaveAnAccount.snp.makeConstraints { (make) in
            make.top.equalTo(loginButton.snp.bottom).offset(80)
            make.centerX.equalTo(containerOfLoginForm.snp.centerX)
            make.bottom.equalTo(containerOfLoginForm.snp.bottom).offset(-16)
        }
        

        singleChildScrollView.alwaysBounceVertical = true
        view.backgroundColor = .white
        
        // set image from asset
        logoImageVIew.image = UIImage(named: "simpleapple")
        
        // style of text username
        usernameTextField.placeholder = "Username"
        usernameTextField.borderStyle = .roundedRect
        usernameTextField.autocapitalizationType = .none
        usernameTextField.autocorrectionType = .no
        usernameTextField.returnKeyType = .continue
        usernameTextField.clearButtonMode = .whileEditing
        usernameTextField.contentVerticalAlignment = .center
        
        
        // style of password textfield
        passwordTextField.placeholder = "Password"
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.autocapitalizationType = .none
        passwordTextField.autocorrectionType = .no
        passwordTextField.returnKeyType = .continue
        passwordTextField.clearButtonMode = .whileEditing
        passwordTextField.contentVerticalAlignment = .center
        
        // login button styel
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.cornerRadius = 6
        loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        
        // forgot password configuration
        forgotPassword.text = "Forgot password?"
        forgotPassword.textColor = .systemBlue
        forgotPassword.font = UIFont.systemFont(ofSize: 15)
        forgotPassword.textAlignment = .center
        forgotPassword.isUserInteractionEnabled = true
        
        // Don't have an account styling
        doNotHaveAnAccount.text = "Don't have an account?"
        doNotHaveAnAccount.textColor = .black
        doNotHaveAnAccount.font = UIFont.systemFont(ofSize: 15)
        doNotHaveAnAccount.textAlignment = .center
        doNotHaveAnAccount.isUserInteractionEnabled = true
        
    }
    
    //loginButtonTapped
    @objc func loginButtonTapped() {
        // show confirm dialog
        let alert = UIAlertController(title: "Login", message: "Are you sure you want to login?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { (action) in
            // when user click yes
            // check if username and password is correct
            if self.usernameTextField.text == "admin" && self.passwordTextField.text == "123" {
                // if correct, show success dialog
                let alert = UIAlertController(title: "Login", message: "Login success", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                    // when user click ok, dismiss alert
                    alert.dismiss(animated: true, completion: nil)
                }))
                self.present(alert, animated: true, completion: nil)
            } else {
                // if not correct, show error dialog
                let alert = UIAlertController(title: "Login", message: "Username or password is not correct", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
                    // when user click ok, dismiss alert
                    alert.dismiss(animated: true, completion: nil)
                }))
                self.present(alert, animated: true, completion: nil)
            }
        }))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: { (action) in
            // when user click no, dismiss alert
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
    }

}
