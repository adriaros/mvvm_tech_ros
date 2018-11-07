//
//  SelectorViewController.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 10/24/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import UIKit

class SelectorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navigationController = NavigationBar()
        navigationController.configureTarget(self)
        
        APIClient.getDefaultList() { (DTO, error) in
            if error != nil {
                guard let error = error else { return }
                print(error)
            } else {
                guard let results = DTO?.results else { return }
                print(results)
            }
        }
    }
}
