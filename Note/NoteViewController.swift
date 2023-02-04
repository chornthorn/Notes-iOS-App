//
//  ViewController.swift
//  Note
//
//  Created by thorn on 2/2/23.
//

import UIKit
import SnapKit

class NoteViewController: UIViewController {
    
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
        
        
        
        // single child scroll view constraint
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: singleChildScrollView, attribute: .top, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: singleChildScrollView, attribute: .bottom, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: singleChildScrollView, attribute: .trailing, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: singleChildScrollView, attribute: .leading, relatedBy: .equal, toItem: view.safeAreaLayoutGuide, attribute: .leading, multiplier: 1, constant: 0),
            
            NSLayoutConstraint(item: containerOfLoginForm, attribute: .top, relatedBy: .equal, toItem: singleChildScrollView, attribute: .top, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: containerOfLoginForm, attribute: .bottom, relatedBy: .equal, toItem: singleChildScrollView, attribute: .bottom, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: containerOfLoginForm, attribute: .trailing, relatedBy: .equal, toItem: singleChildScrollView, attribute: .trailing, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: containerOfLoginForm, attribute: .leading, relatedBy: .equal, toItem: singleChildScrollView, attribute: .leading, multiplier: 1, constant: 0),
            
            NSLayoutConstraint(item: containerOfLoginForm, attribute: .centerX, relatedBy: .equal, toItem: singleChildScrollView, attribute: .centerX, multiplier: 1, constant: 0)
        ])
        
        singleChildScrollView.alwaysBounceVertical = true
        
        
        view.backgroundColor = .white
        
        loginButton.disableAutoLayout()
        usernameTextField.disableAutoLayout()
        passwordTextField.disableAutoLayout()
        logoImageVIew.disableAutoLayout()
        forgotPassword.disableAutoLayout()
        doNotHaveAnAccount.disableAutoLayout()
        singleChildScrollView.disableAutoLayout()
        containerOfLoginForm.disableAutoLayout()
        
        
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
        
        
        
        
        
        // set all constraint
        NSLayoutConstraint.activate([
            
            NSLayoutConstraint(item: logoImageVIew, attribute: .top, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .top, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: logoImageVIew, attribute: .centerX, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .centerX, multiplier: 1, constant: 0),
            NSLayoutConstraint(item: logoImageVIew, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: logoImageVIew, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100),
            
            NSLayoutConstraint(item: usernameTextField, attribute: .top, relatedBy: .equal, toItem: logoImageVIew, attribute: .bottom, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: usernameTextField, attribute: .leading, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .leading, multiplier: 1, constant: 16),
            NSLayoutConstraint(item: usernameTextField, attribute: .trailing, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .trailing, multiplier: 1, constant: -16),
            NSLayoutConstraint(item: usernameTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50),
            
            NSLayoutConstraint(item: passwordTextField, attribute: .top, relatedBy: .equal, toItem: usernameTextField, attribute: .bottom, multiplier: 1, constant: 16),
            NSLayoutConstraint(item: passwordTextField, attribute: .leading, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .leading, multiplier: 1, constant: 16),
            NSLayoutConstraint(item: passwordTextField, attribute: .trailing, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .trailing, multiplier: 1, constant: -16),
            NSLayoutConstraint(item: passwordTextField, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 50),
            
            // forgot password label align to trailing below of password textfeild
            NSLayoutConstraint(item: forgotPassword, attribute: .top, relatedBy: .equal, toItem: passwordTextField, attribute: .bottom, multiplier: 1, constant: 8),
            NSLayoutConstraint(item: forgotPassword, attribute: .trailing, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .trailing, multiplier: 1, constant: -16),
            //NSLayoutConstraint(item: forgotPassword, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100),
            NSLayoutConstraint(item: forgotPassword, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 30),
            
            NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: passwordTextField, attribute: .bottom, multiplier: 1, constant: 56),
            NSLayoutConstraint(item: loginButton, attribute: .leading, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .leading, multiplier: 1, constant: 16),
            NSLayoutConstraint(item: loginButton, attribute: .trailing, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .trailing, multiplier: 1, constant: -16),
            NSLayoutConstraint(item: loginButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 46),
            
            // don't have an account should below of login button
            NSLayoutConstraint(item: doNotHaveAnAccount, attribute: .top, relatedBy: .equal, toItem: loginButton, attribute: .bottom, multiplier: 1, constant: 80),
            NSLayoutConstraint(item: doNotHaveAnAccount, attribute: .leading, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .leading, multiplier: 1, constant: 16),
            NSLayoutConstraint(item: doNotHaveAnAccount, attribute: .trailing, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .trailing, multiplier: 1, constant: -16),
            NSLayoutConstraint(item: doNotHaveAnAccount, attribute: .bottom, relatedBy: .equal, toItem: containerOfLoginForm, attribute: .bottom, multiplier: 1, constant: -32)
            
            
            
        ])
        
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

extension UIView {
    // disable translatesAutoresizingMaskIntoConstraints
    func disableAutoLayout() {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // default constraint
    func defaultConstraint(to view: UIView, top: CGFloat, leading: CGFloat, trailing: CGFloat, bottom: CGFloat) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: view.topAnchor, constant: top),
            self.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leading),
            self.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: trailing),
            self.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: bottom)
        ])
    }
}

