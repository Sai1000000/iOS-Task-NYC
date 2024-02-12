//
//  NYCSchoolViewModel.swift
//  NYCSchoolApp
//
//  Created by Sai Sreenath Adabala on 2/12/24.
//
import Foundation
import Combine

class NYCSchoolViewModel:ObservableObject {
    @Published var schools : [NYCSchool] = []
    private let schoolService = SchoolService()
    init() {
        getSchools()
    }
}
extension NYCSchoolViewModel {
    func getSchools(){
        Task{  @MainActor [weak self] in
            
            do {
                self?.schools = try await schoolService.fetcNYCschools(url:ServiceURLs.SchoolURL.rawValue)
            } catch let error{
                print(error.localizedDescription)
            }
        }
    }
}
