//
//  LoginViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 12/02/22.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnClickSignUp(_ sender: UIButton){
        let controller = storyboard?.instantiateViewController(identifier: "SignupViewController") as! SignupViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
        print("go to the login page")
    }
    
    @IBAction func btnClickLearnMore(_ sender: UIButton){
        let controller = storyboard?.instantiateViewController(identifier: "HomeTabBarViewController") as! HomeTabBarViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
        print("go to sHomeTabBarViewController")
    }
    
    @IBAction func btnClickLogIn(_ sender: UIButton) {
        if txtEmail.text!.isBlankOrEmpty()
        {
            //            showAlert(title: "", message: "")
            // create the alert
            let alert = UIAlertController(title: nil, message: "Please enter your email id", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if !isValidEmail(txtEmail.text!)
        {
            //          // create the alert
            let alert = UIAlertController(title: nil, message: "Please enter valid email id", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
        }
        else if txtPassword.text!.isBlankOrEmpty(){
            // create the alert
            let alert = UIAlertController(title: nil, message: "Please enter password", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
//        else if {
//            // create the alert
//            let alert = UIAlertController(title: nil, message: "Please enter password", preferredStyle: UIAlertController.Style.alert)
//
//            // add an action (button)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
//
//            // show the alert
//            self.present(alert, animated: true, completion: nil)
//
//        }

        else
        {
            Auth.auth().signIn(withEmail: txtEmail.text!, password: txtPassword.text!) { [weak self] authResult, error in
              guard let strongSelf = self else { return }
                print(authResult as Any)
                if authResult != nil
                {
                    
                }else
                {
                    let alert = UIAlertController(title: nil, message: "Please create your account", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    
                    // show the alert
                    self?.present(alert, animated: true, completion: nil)

                }
            }
        }
        
    }
    
    //    func showAlert(title : String, message : String){
    // create the alert
    //           let alert = UIAlertController(title: "My Title", message: "This is my message.", preferredStyle: UIAlertController.Style.alert)
    
    // add an action (button)
    //           alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    
    // show the alert
    //           self.present(alert, animated: true, completion: nil)
    //    }
    
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
}

extension String {
    func isBlankOrEmpty() -> Bool {
        
        // Check empty string
        if self.isEmpty {
            return true
        }
        // Trim and check empty string
        return (self.trimmingCharacters(in: .whitespaces) == "")
    }
}
