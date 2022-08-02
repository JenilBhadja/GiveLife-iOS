//
//  HomeViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 12/02/22.
//

import UIKit

class HomeViewController: UIViewController {
    

    @IBOutlet weak var btnLogin: UIButton!{
        didSet{
            btnLogin.backgroundColor = .red
            btnLogin.layer.cornerRadius = 16
            btnLogin.layer.borderWidth = 2
            btnLogin.layer.borderColor = UIColor.red.cgColor
            }
    }

    @IBAction func btnClickLogin(_ sender: UIButton) {
        
//        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
//        self.navigationController?.pushViewController(vc!, animated: true)
        let controller = storyboard?.instantiateViewController(identifier: "LoginViewController") as! UIViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
        print("go to the login page")
        
    }
    @IBAction func btnClickSignup(_ sender: UIButton) {
        
//        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SignupViewController") as? SignupViewController
//        self.navigationController?.pushViewController(vc!, animated: true)
        let controller = storyboard?.instantiateViewController(identifier: "SignupViewController") as! UIViewController
        controller.modalPresentationStyle = .fullScreen
        controller.modalTransitionStyle = .flipHorizontal
        present(controller, animated: true, completion: nil)
        print("go to the signin page")
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
