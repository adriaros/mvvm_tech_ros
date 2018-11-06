//
//  APIConfigurator.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/6/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import Foundation
import Alamofire

protocol APIConfiguration: Alamofire.URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}

