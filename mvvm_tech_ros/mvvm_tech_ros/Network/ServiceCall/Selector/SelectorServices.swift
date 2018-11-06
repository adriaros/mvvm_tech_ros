//
//  SelectorServices.swift
//  mvvm_tech_ros
//
//  Created by Adria Ros Saez on 11/6/18.
//  Copyright © 2018 adriaros. All rights reserved.
//

import UIKit

extension APIClient {
    
    static func getDefaultList(completion: @escaping (SelectorListResponse?,Error?)->Void){
        performRequest(type: .json, serviceRouter: APIRouter.getDefaultList(), decoder: JSONDecoder(), dto: SelectorListResponse.self) { (response) in
            switch response {
            case .failure(let error):
                completion(nil,error)
            case .success(let data):
                completion(data, nil)
            }
        }
    }
}
