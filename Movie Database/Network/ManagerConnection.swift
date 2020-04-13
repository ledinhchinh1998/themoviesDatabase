//
//  ManagerConnection.swift
//  Movie Database
//
//  Created by Chinh le on 2/6/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper
import UIKit

class ManagerConnection {
    static func isConnectionToInternet() -> Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
    static func requestPopularMovie(router: Router, completion: @escaping (_ result: PopularModel?,_ error: BaseResponseError?) -> Void) {
        AF.request(router).responseJSON { (response) in
            guard let data = response.data else {
                return
            }
            
            do {
                guard let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] else {
                    return
                }
                
                let popularMovie = PopularModel(JSON: json)
                completion(popularMovie, nil)
            } catch {
                let responseError = BaseResponseError(nil, nil, "Parse json API popular is fail")
                completion(nil, responseError)
            }
        }
    }
}
