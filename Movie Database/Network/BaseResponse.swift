//
//  BaseResponse.swift
//  Movie Database
//
//  Created by Chinh le on 2/6/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import Foundation
import ObjectMapper

//MARK: - Base Response 
class BaseResponse<T>: Mappable {
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        
    }
    
}

//MARK: - Base Response error
class BaseResponseError {
    var errorType: NetworkErrorType?
    var errorCode: Int?
    var errorMessage: String?
    
    init(_ errorType: NetworkErrorType?,_ errorCode: Int?,_ errorMessage: String) {
        self.errorType = errorType
        self.errorCode = errorCode
        self.errorMessage = errorMessage
    }
}

class Model {
    
}
