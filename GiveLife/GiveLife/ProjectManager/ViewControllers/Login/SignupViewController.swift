//
//  SignupViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 12/02/22.
//

import UIKit
import Firebase


class SignupViewController: UIViewController {
    
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    
    @IBAction func btnClickLearnMore(_ sender: UIButton){
        let controller = storyboard?.instantiateViewController(identifier: "HomeTabBarViewController") as! HomeTabBarViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
        print("go to sHomeTabBarViewController")
    }
    
    @IBAction func btnClickSignUp(_ sender: UIButton) {
        
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
        else if txtPassword.text!.isBlankOrEmpty(){
            let alert = UIAlertController(title: nil, message: "Please enter confirm password", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        else if txtPassword.text! != txtConfirmPassword.text
        {
            let alert = UIAlertController(title: nil, message: "Both password does not match", preferredStyle: UIAlertController.Style.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)
            
        }
        else
        {
            Auth.auth().createUser(withEmail: txtEmail.text!, password: txtPassword.text!) { [weak self] authResult, error in
                guard let strongSelf = self else { return }
                print(authResult as Any)
                let firUser = authResult?.user
                print(authResult?.user)
                if authResult != nil
                {
                    
                }else{
                    let alert = UIAlertController(title: nil, message: "Something went wrong!", preferredStyle: UIAlertController.Style.alert)
                    
                    // add an action (button)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    
                    // show the alert
                    self!.present(alert, animated: true, completion: nil)

                }
            }
        }
        
    }
    func isValidEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    
    @IBAction func btnClickLogin(_ sender: UIButton) {
        
        //            let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController
        //            self.navigationController?.pushViewController(vc!, animated: true)
        let controller = storyboard?.instantiateViewController(identifier: "LoginViewController") as! UIViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
        print("go to the login page")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    
}


