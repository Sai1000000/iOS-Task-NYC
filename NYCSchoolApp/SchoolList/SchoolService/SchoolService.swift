//
//  SchoolService.swift
//  NYCSchoolApp
//
//  Created by Sai Sreenath Adabala on 2/12/24.
//

import Foundation

class SchoolService {
    func fetcNYCschools( url : String?) async throws -> [NYCSchool] {
        guard let urlString = url,
                let schoolURL = URL(string: urlString) else {
            throw SchoolError.invalidURL
        }
        let(data,_) = try await URLSession.shared.data(from:schoolURL)
        let schools = try JSONDecoder().decode([NYCSchool].self,from: data)
        return schools
    }
}
extension SchoolService {
    enum SchoolError : Error{
      case invalidURL
    }
}
