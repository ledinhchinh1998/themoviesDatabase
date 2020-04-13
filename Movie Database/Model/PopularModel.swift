//
//  PopularModel.swift
//  Movie Database
//
//  Created by Chinh le on 4/11/20.
//  Copyright © 2020 Chinh le. All rights reserved.
//

import Foundation
import ObjectMapper

class PopularModel: Mappable {
    //MARK: Property
    var page: Int?
    var total_results: Int?
    var total_pages: Int?
    var results: [PopularResultModel]?
    
    //MARK: Method
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        self.page <- map["page"]
        self.total_pages <- map["total_pages"]
        self.total_pages <- map["total_pages"]
        self.results <- map["results"]
    }
}

class PopularResultModel: Mappable {
    //MARK: Property
    var vote_count: Int?
    var video: Bool?
    var poster_path: String?
    var id: Int?
    var adult: Bool?
    var backdrop_path: String?
    var original_language: String?
    var original_title: String?
    var vote_average: Int?
    var overview: String?
    var release_date: String?
    
    //MARK: Method
    required init?(map: Map) {}
    
    func mapping(map: Map) {
        self.vote_count <- map["vote_count"]
        self.video <- map["video"]
        self.poster_path <- map["poster_path"]
        self.id <- map["id"]
        self.adult <- map["adult"]
        self.backdrop_path <- map["backdrop_path"]
        self.original_language <- map["original_language"]
        self.original_title <- map["original_title"]
        self.vote_average <- map["vote_average"]
        self.overview <- map["overview"]
        self.release_date <- map["release_date"]
    }
}
