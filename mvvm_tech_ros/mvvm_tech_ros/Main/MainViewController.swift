//
//  MainViewController.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/5/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    let viewModel = MainViewModel()
    
    @IBOutlet weak var selectorButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.configNavigation(vc: self)
        viewModel.configViews(button: selectorButton)
    }
    
    @IBAction func onSelectorButton(_ sender: Any) {
        viewModel.navigateToSelector(origin: self)
    }
}
