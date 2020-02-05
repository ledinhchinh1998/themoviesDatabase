//
//  Constant.swift
//  Movie Database
//
//  Created by Chinh le on 2/5/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import Foundation

//MARK: Parameter API
struct Constant {
    //MARK: API
    struct ProductionServer {
        static let baseURL = "https://api.themoviedb.org/3"
        static let apiKey = "248dcdb137d6addad8444cd2a037445a"
    }
    
    struct APIParameterKey {
        static let searchByID = "/movie/"
        static let searchByName = "/search/movie/"
        static let searchByGenres = "/genre/movie/"
    }
}
