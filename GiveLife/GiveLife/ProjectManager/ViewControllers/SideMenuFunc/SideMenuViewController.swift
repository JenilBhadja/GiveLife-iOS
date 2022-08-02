//
//  SideMenuViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 16/05/22.
//

import UIKit

class SideMenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnClickProfile(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickChangePassword(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ChangePasswordViewController") as? ChangePasswordViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickAboutUs(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AboutUsViewController") as? AboutUsViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickFeedback(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "FeedbackViewController") as? FeedbackViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickTermsAndConditions(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "TermsAndConditionsViewController") as? TermsAndConditionsViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickPrivacyPolicy(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "PrivacyPolicyViewController") as? PrivacyPolicyViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickSupport(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SupportViewController") as? SupportViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func btnClickLogOut(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "LogOutViewController") as? LogOutViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
    
    @IBAction func btnClickVersion(_ sender : UIButton){
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "VersionViewController") as? VersionViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
   
}
