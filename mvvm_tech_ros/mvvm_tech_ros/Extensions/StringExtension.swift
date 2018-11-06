//
//  StringExtension.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/6/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import Foundation

extension String {
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, value: "**\(self)**", comment: "")
    }
}
