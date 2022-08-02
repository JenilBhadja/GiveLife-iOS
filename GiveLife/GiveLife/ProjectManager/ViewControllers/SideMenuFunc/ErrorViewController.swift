//
//  ErrorViewController.swift
//  GiveLife
//
//  Created by JENIL BHADJA on 16/05/22.
//

import UIKit
import DropDown

class ErrorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn1 = UIButton(type: .custom)
        btn1.setImage(UIImage(named: "Previous"), for: .normal)
        btn1.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btn1.addTarget(self, action: #selector(btnClickback), for: .touchUpInside)
        let item1 = UIBarButtonItem(customView: btn1)
        self.navigationItem.setLeftBarButtonItems([item1], animated: true)
        
    }
    
    @objc func btnClickback(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
