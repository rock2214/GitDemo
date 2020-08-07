//
//  YBHomeViewModel.swift
//  GitUserApp
//
//  Created by Rock on 7/22/20.
//  Copyright © 2020 Rock. All rights reserved.
//

import Foundation
import ObjectMapper


/// GitHubUser List Model
struct GitHubUsers: Mappable {
    var totalCount: Int!
    var incompleteResults: Bool!
    var items: [GitHubUser]!
     
    init() {
        totalCount = 0
        incompleteResults = false
        items = []
    }
     
    init?(map: Map) { }
     
    // Mappable Protocol
    mutating func mapping(map: Map) {
        totalCount        <- map["total_count"]
        incompleteResults <- map["incomplete_results"]
        items             <- map["items"]
    }
}

/// GitHubUser Model
struct GitHubUser: Mappable {

    var avatarUrl: String!
    var login: String!
    var score: Float!
    var htmlUrl:String!
   
    init?(map: Map) { }
     
    mutating func mapping(map: Map) {
        avatarUrl <- map["avatar_url"]
        login     <- map["login"]
        score     <- map["score"]
        htmlUrl   <- map["html_url"]
      
    }
}
