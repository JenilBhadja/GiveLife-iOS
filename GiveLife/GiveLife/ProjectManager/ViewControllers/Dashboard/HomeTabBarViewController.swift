//
//  HomeTabBarViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 17/05/22.
//

import UIKit

class HomeTabBarViewController: UIViewController {

    
    @IBAction func btnClickSearch(_ sender : UIButton){
    let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ErrorViewController") as? ErrorViewController
    self.navigationController?.pushViewController(vc!, animated: true)
}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
