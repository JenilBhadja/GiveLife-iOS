//
//  LanguagePickerViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 12/02/22.
//

import UIKit
import DropDown

class LanguagePickerViewController: UIViewController {

    
    @IBOutlet weak var uiDropDown: UIView!
    @IBOutlet weak var lblLanguage: UILabel!
    
    let dropDown = DropDown()
    let languagePicker = ["ગુજરાતી", "હિન્દી", "English"]
    
    @IBAction func btnClickContinue(_ sender: UIButton) {
    
//           let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "OnboardingViewController") as? OnboardingViewController
//            self.navigationController?.pushViewController(vc!, animated: true)
            let controller = storyboard?.instantiateViewController(identifier: "OnboardingViewController") as! UIViewController
            controller.modalPresentationStyle = .fullScreen
//            controller.modalTransitionStyle = .flipHorizontal
            present(controller, animated: true, completion: nil)
              print("go to onboarding page")
        }
    
    
    @IBAction func showLanguageOptions(_ sender: UIButton) {
        dropDown.show()
        print("go to onboarding page")
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblLanguage.text = "Select A Language"
        dropDown.anchorView = uiDropDown
        dropDown.dataSource = languagePicker
        
        // Top of drop down will be below the anchorView
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        
        // When drop down is displayed with `Direction.top`, it will be above the anchorView
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        
        dropDown.direction = .bottom
        
        // Action triggered on selection
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            self.lblLanguage.text = languagePicker[index]
        }


    }
  

}
