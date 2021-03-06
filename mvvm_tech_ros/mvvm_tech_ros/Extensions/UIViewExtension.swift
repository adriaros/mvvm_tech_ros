//
//  UIViewExtension.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/6/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import UIKit

extension UIView {
    func roundCorners(){
        let h = self.bounds.size.height
        self.layer.cornerRadius = h / 4
        self.layer.masksToBounds = true
    }
    func shadow(){
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize.zero
    }
}
