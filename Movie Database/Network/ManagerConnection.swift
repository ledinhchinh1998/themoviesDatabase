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

class ManagerConnection {
    static func isConnectionToInternet() -> Bool {
        return NetworkReachabilityManager()!.isReachable
    }
    
    static func request<T: Mappable>(_ router: Router,_ returnType: T.Type, completion: (_ result: T?,_ error: BaseResponseError?) -> Void) {
        if !isConnectionToInternet() {
            return
        }
        
        print(router.urlRequest)
        
        AF.request(router).responseJSON { (response) in
            
        }
    }
}
