//
//  MainViewController.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/5/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onSelectorButton(_ sender: Any) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "SelectorView", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "SelectorViewController") as! SelectorViewController
        self.navigationController?.pushViewController(nextViewController, animated:true)
    }
}
