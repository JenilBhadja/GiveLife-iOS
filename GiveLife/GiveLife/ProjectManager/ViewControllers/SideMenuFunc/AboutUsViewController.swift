//
//  AboutUsViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 17/05/22.
//

import UIKit

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "Previous"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
    
        
        let btn2 = UIButton(type: .custom)
        btn2.setImage(UIImage(named: "Next"), for: .normal)
        btn2.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn2.addTarget(self, action: #selector(btnClickInfo), for: .touchUpInside)
        let item2 = UIBarButtonItem(customView: btn2)
        self.navigationItem.setRightBarButtonItems([item2], animated: true)
        
    }
    

    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @objc func btnClickInfo(_ sender: Any) {
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ErrorViewController")as? ErrorViewController
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
