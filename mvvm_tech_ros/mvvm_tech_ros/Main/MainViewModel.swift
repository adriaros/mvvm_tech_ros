//
//  MainViewModel.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/5/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import UIKit

class MainViewModel {
    
    func configNavigation(vc: UIViewController){
        let navigationController = NavigationBar()
        navigationController.configureTarget(vc)
    }
    
    func configViews(button: UIButton){
        button.roundCorners()
    }
    
    func navigateToSelector(origin: UIViewController){
        let nextViewController: SelectorViewController = Storyboard.SelectorViewController.instantiateViewController()
        origin.navigationController?.pushViewController(nextViewController, animated:true)
    }
    
}
