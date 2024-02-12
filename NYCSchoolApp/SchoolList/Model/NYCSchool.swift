//
//  NYCSchool.swift
//  NYCSchoolApp
//
//  Created by Sai Sreenath Adabala on 2/12/24.
//

import Foundation
struct NYCSchool: Codable {
    let dbn: String
    let description : String?
    let schoolName: String?
    
    enum CodingKeys: String, CodingKey {
        case schoolName  = "school_name"
        case dbn  = "dbn"
        case description = "overview_paragraph"
    }
}
