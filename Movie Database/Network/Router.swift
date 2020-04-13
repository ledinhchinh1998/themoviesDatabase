//
//  Router.swift
//  Movie Database
//
//  Created by Chinh le on 2/5/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import Foundation
import Alamofire

//MARK: Error Type
enum NetworkErrorType {
    case API_ERROR
    case HTTP_ERROR
}

//MARK: API Router
enum Router: URLRequestConvertible {
    case searchById(id: Int)
    case searchByName(query: String)
    case searchByGenres(language: String)
    case popularMovie(language: String, page: Int)
    
    //MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .searchById, .searchByName, .searchByGenres, .popularMovie:
            return .get
        }
    }
    
    //MARK: - Path
    private var path: String {
        switch self {
        case .searchById(let id):
            return Constant.APIParameterKey.searchByID + String(id)
        case .searchByName:
            return Constant.APIParameterKey.searchByName
        case .searchByGenres:
            return Constant.APIParameterKey.searchByGenres
        case .popularMovie:
            return Constant.APIParameterKey.popularMovie
        }
    }
    
    //MARK: - Headers
    
    //MARK: - Parameters
    private var parameters: Parameters? {
        switch self {
        case .searchById:
            return ["api_key": Constant.ProductionServer.apiKey]
        case .searchByName(let query):
            return ["api_key": Constant.ProductionServer.apiKey,
                    "query": query]
        case .searchByGenres(let language):
            return ["api_key": Constant.ProductionServer.apiKey,
                    "language": language]
        case .popularMovie(let language, let page):
            return ["api_key": Constant.ProductionServer.apiKey,
                    "language": language,
                    "page": page]
        }
    }
    
    //MARK: - URL request
    func asURLRequest() throws -> URLRequest {
        let url = try Constant.ProductionServer.baseURL.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.method = method
        if let parameters = parameters {
            do {
                urlRequest = try URLEncoding.default.encode(urlRequest, with: parameters)
            } catch {
                print("Encoding fail")
            }
        }
        
        return urlRequest
    }
}

